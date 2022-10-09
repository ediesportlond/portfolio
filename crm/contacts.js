function lastCall(){
    location.reload();
}

function clearForm(){
    $('[name=comp]').val('');
    $('[name=title]').val('');
    $('[name=name]').val('');
    $('[name=cellNum]').val('');
    $('[name=offNum]').val('');
    $('[name=email]').val('');
    $('[name=notes]').val('');
    sessionStorage.setItem('contactID', null);
}

//clear any session contact IDs on load
    $(window).on('load', function(){
        sessionStorage.setItem('contactID', null);
    });

//function to save/update a contact
$('#submitContacts').on('click', function(e){
    
    //retrieve all form values and simplify object
    let formData = $('form').serializeArray().reduce(function(obj, item) {
        obj[item.name] = item.value;
        return obj;
        }, {});
    
    //check all fields are not empty
    let empty = 0;
    for (let key in formData){
        if(formData[key] === ''){
            empty++;
        }
    }

    if(empty === Object.keys(formData).length){
        alert('You can\'t save an empty contact.');
        e.preventDefault();
        return null;
    }
    
    //check notes are less than 250 characters
    if(formData['notes'].length > 250){
        alert('Max 250 characters allowed. You have '+$('[name=notes').val().length+'.');
        e.preventDefault();
        return null;
    }
    
    let letterCheck = /[a-z]+/gi;
    if(letterCheck.test(formData['cellNum'])||letterCheck.test(formData['offNum'])){
        alert('Phone number cannot have any letters.');
        return null;
    }
    
    
    let contactID = sessionStorage.getItem("contactID");

    if(contactID !== 'null'){
        e.preventDefault();
        
        //ajax for updating contact
        formData['updateContact'] = true;
        formData['contactID'] = contactID;
        
        $.ajax({
          method: "POST",
          url: "actions.php",
          data: formData
        })
          .done(function( msg ) {
            alert('Contact updated succesfully.');
         });

        let updateRow = '<td>'+formData.comp+'</td>'+
            '<td>'+formData.title+'</td>'+
            '<td>'+formData.name+'</td>'+
            '<td><a href = "tel:'+formData.cellNum+'" style="text-decoration:none">'+formData.cellNum+'</a></td>'+
            '<td><a href = "tel:'+formData.offNum+'" style="text-decoration:none">'+formData.offNum+'</a></td>'+
            '<td><a href="mailto:'+formData.email+'"style = "text-decoration:none">'+formData.email+'</a></td>'+
            '<td style="max-width: 100px; overflow: hidden; white-space: nowrap;">'+formData.notes+'</td>'+
            '<td>'+
                '<button onclick="lastCall()">Delete</button>'+
            '</td>';
            
          $('#'+contactID).attr('onclick', 'lastCall()');
          $('#'+contactID).html(updateRow);
          clearForm();
    }
    sessionStorage.setItem('contactID', null);
    formData ={}

})

//delete function for contact
$('.deleteContact').on('click', function(){
    
    let confirmation = confirm('Are you sure you want to delete this contact?');
    
    if (!confirmation){
        return null;
    }
    
    //ajax to delete
        let formData = {
            deleteContact: true,
            contactID: $(this).parent().parent().attr('id')
        };
        $.ajax({
          method: "POST",
          url: "actions.php",
          data: formData
        })
         
         $('#'+formData.contactID).remove();
         clearForm();
})

//function to copy contact info to form
$('tr').on('click', function(){
    sessionStorage.setItem("contactID", this.id);
    let id2 = '#'+this.id;
    
    let formData = $(id2).html().replace(/<td>/g, '').split('</td>');
    $('[name=comp]').val(formData[0]);
    $('[name=title]').val(formData[1]);
    $('[name=name]').val(formData[2]);
    
    //removes html from phone number
    
    let phoneRegex = /[0-9]{0,1}\s*-*\(*[0-9]{1,3}\)*\s*-*\s*[0-9]{1,3}\s*-*\s*[0-9]{1,4}/gi;
    let phone = formData[3].match(phoneRegex);
    let office = formData[4].match(phoneRegex);
    
    phone !== null ? phone = phone[0]: phone = '';
    office !== null ? office = office[0] : office = '';
    
    $('[name=cellNum]').val(phone);
    $('[name=offNum]').val(office);
    
    //removes html from email
    
    let email = formData[5].match(/>.*</gi)[0].replace(/>|</g, '');
    
    $('[name=email]').val(email);
    
    let notes = formData[6];
    notes = notes.replace(/^<td.+;"./i, '');
    $('[name=notes]').val(notes);
    
    let colClass = $('#contactCollapse').attr('class');
    let showExists = /show/gi.test(colClass);
    !showExists ? $('#contactCollapse').addClass('show'): null;
})

//function to clear form and remove session contact ID
$("#clearForm").on('click', function(e){
    e.preventDefault();
    clearForm();
})

//function for searching through contacts
$('[name=query]').keyup(function(){
    let href = '?page=contacts&searchContacts=true&query='+$('[name=query]').val();
    $('#searchContacts').attr('href', href);
})

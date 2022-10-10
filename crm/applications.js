function lastCall(){
    location.reload();
}

function clearForm(){
    $('[name=appStatus]').val('');
    $('[name=comp]').val('');
    $('[name=jobTitle]').val('');
    $('[name=pay]').val('');
    $('[name=exp]').val('');
    $('[name=jobLink]').val('');
    $('[name=website]').val('');
    $('[name=resumeVers]').val('');
    $('[name=applyDate]').val('');
    $('[name=schedDate]').val('');
    $('[name=source]').val('');
    $('[name=notes]').val('');
    sessionStorage.setItem('appID', null);
}

//clear any session contact IDs on load
    $(window).on('load', function(){
        sessionStorage.setItem('appID', null);
    });

//function to save/update a contact
$('#submitApp').on('click', function(e){
    
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
    
    //check notes are less than 500 characters
    if(formData.notes.length > 500){
        alert('Max 500 characters allowed. You have '+$('[name=notes').val().length+'.');
        e.preventDefault();
        return null;
    }
    
    let appID = sessionStorage.getItem("appID");

    if(appID !== 'null'){
        e.preventDefault();
        
        //ajax for updating contact
        formData['updateApp'] = true;
        formData['appID'] = appID;
        
        formData['appStatus'] != sessionStorage.getItem('status') ? formData['updateStatus'] = true: null;
        
        $.ajax({
          method: "POST",
          url: "actions.php",
          data: formData
        })
          .done(function( msg ) {
            alert('Contact updated succesfully.');
         });

        //check for links
        let jobLink = formData.jobLink;
        jobLink !== ''? jobLink = '<a href="'+jobLink+'" style="text-decoration:none">Job Posting</a>' : null;
        let site = formData.website;
        site !== ''? site = '<a href="'+site+'" style="text-decoration:none">Company Site</a>': null;
        
        let updateRow = '<td>'+formData.appStatus+'</td>'+
            '<td>'+formData.comp+'</td>'+
            '<td>'+formData.jobTitle+'</td>'+
            '<td>'+formData.pay+'</td>'+
            '<td>'+formData.exp+'</td>'+
            '<td>'+jobLink+'</td>'+
            '<td>'+site+'</td>';
        
        resumeVers = formData.resumeVers;

        if(resumeVers !== 'none' && resumeVers !== ''){
            updateRow += '<td>Version '+resumeVers+'</td>';
        } else {
            updateRow += '<td>'+resumeVers+'</td>';
        }
        
        let applyDate = formData.applyDate;
        if(formData.applyDate !== ''){
            let date = formData.applyDate.split('-');
            applyDate = date[1]+'/'+date[2]+'/'+date[0];
        }
        
        let schedDate = formData.schedDate;
        if(formData.schedDate !== ''){
            let date2 = formData.schedDate.split('-');
            schedDate = date2[1]+'/'+date2[2]+'/'+date2[0];
        }
        
        updateRow += '<td>'+applyDate+'</td>'+
            '<td>'+schedDate+'</td>'+
            '<td><a href="?page=contacts&searchContacts=true&query='+formData.comp+'" style="text-decoration:none">Contacts</a></td>'+
            '<td>'+formData['source']+'</td>'+
            '<td style="max-width: 100px; overflow: hidden; white-space: nowrap;">'+formData.notes+'</td>'+
            '<td>'+
                '<button onclick="lastCall()">Delete</button>'+
            '</td>';
            
        $('#'+appID).attr('onclick', 'lastCall()');
        $('#'+appID).html(updateRow);
        clearForm();
    }
    sessionStorage.setItem('status', null);
    formData ={}

})

//delete function for application
$('.deleteApp').on('click', function(){
    
    let confirmation = confirm('Are you sure you want to delete this application?');
    
    if (!confirmation){
        return null;
    }
    
    //ajax to delete
        let formData = {
            deleteApp: true,
            appID: $(this).parent().parent().attr('id')
        };
        
        $.ajax({
          method: "POST",
          url: "actions.php",
          data: formData
        })
         
         $('#'+formData.appID).remove();
         clearForm();
})

//function to copy app info to form
$('tr').on('click', function(){
    sessionStorage.setItem("appID", this.id);
    let id2 = '#'+this.id;
    
    let formData = $(id2).html().replace(/<td>/g, '').split('</td>');
    $('[name=appStatus]').val(formData[0]);
    sessionStorage.setItem("status", formData[0]);
    $('[name=comp]').val(formData[1]);
    $('[name=jobTitle]').val(formData[2]);
    $('[name=pay]').val(formData[3]);
    $('[name=exp]').val(formData[4]);
    
    let jobLink = '';
    if(formData[5] !== ''){
        //removes html
        jobLink = formData[5].match(/".+?"/i)[0].replace(/\"/g, '');
    }
    
    $('[name=jobLink]').val(jobLink);
    
    let site = '';
    if(formData[6] !== ''){
        //removes html
        site = formData[6].match(/".+?"/i)[0].replace(/\"/g, '');
    }
    
    $('[name=website]').val(site);
    
    //retrieves resume version
    let resume = formData[7];

    if(resume !== '' && resume != 'none'){
        //removes html
        resume = formData[7].match(/version\s\d+/i)[0].replace(/version\s/i, '');
    }
    
    $('[name=resumeVers]').val(resume);
    
    let applyDate =formData[8];
    if(formData[8] !== ''){
        let date = formData[8].split('/');
        applyDate = date[2]+'-'+date[0]+'-'+date[1];
    }
    $('[name=applyDate]').val(applyDate);
    
    let schedDate =formData[9];
    if(formData[9] !== ''){
        let date2 = formData[9].split('/');
        schedDate = date2[2]+'-'+date2[0]+'-'+date2[1];
    }
    
    $('[name=schedDate]').val(schedDate);
    $('[name=source]').val(formData[11]);
    
    let notes = formData[12];
    notes = notes.replace(/^<td.+;"./i, '');
    $('[name=notes]').val(notes);
    
    let colClass = $('#appCollapse').attr('class');
    let showExists = /show/gi.test(colClass);
    !showExists ? $('#appCollapse').addClass('show'): null;
    
    
});

//function to clear form and remove session contact ID
$("#clearForm").on('click',function(e){
    e.preventDefault();
    clearForm();
});

//function for searching through contacts
$('[name=query]').keyup(function(){
    let href = '?page=applications&searchApps=true&query='+$('[name=query]').val();
    $('#searchApps').attr('href', href);
})
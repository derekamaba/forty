$(document).ready(function() {
    $('#contacttable').DataTable({
        "bPaginate": false,
         "bInfo" : false
    });
    let base_url = $('#base').val();

    // LOGIN

    $('#login').on('submit' , function(e) {
        e.preventDefault();
        reset();
        let formdata = new FormData($(this)[0]);
        $.ajax({
            method: 'POST',
            url : base_url + 'login/authentication',
            data : formdata,
            dataType: 'json',
            processData : false,
            contentType : false,
            success : function(response) {
                if (response.status === 'failed') {
                    let keyNames = Object.keys(response.errors);
                    $(keyNames).each(function(index , value) {
                      $("input[name='"+value+"']").next('.field_error').text(response.errors[value]);
                    });
                }else if (response.status === 'valid') {
                    window.location.replace(base_url + 'home');
                }
            },
        })
    });

    // REGISTER

    $('#register').on('submit' , function(e) {
        e.preventDefault();
        reset();
        let formdata = new FormData($(this)[0]);
        $.ajax({
            method : 'POST',
            url : base_url + 'login/new_user',
            data : formdata,
            dataType: 'json',
            processData : false,
            contentType : false,
            success : function(response){
                if (response.status === 'failed') {
                    let keyNames = Object.keys(response.errors);
                    $(keyNames).each(function(index , value) {
                      $("input[name='"+value+"']").next('.field_error').text(response.errors[value]);
                    });
                }else {
                    alert('Registered Successfully');
                    setTimeout(function() {
                        location.replace(base_url + 'login/success');
                    }, 1000)
                }
            },
        })
    });

    // ADD CONTACT

    $('#addcontact').on('submit' , function(e) {
        e.preventDefault();
        let formdata = new FormData($(this)[0]);
        $.ajax({
            url : base_url + 'home/newcontact',
            method : 'POST',
            data : formdata,
            dataType : 'json',
            processData : false,
            contentType : false,
            success : function(response) {
                if (response.status === 'failed') {
                    let keyNames = Object.keys(response.errors);
                    $(keyNames).each(function(index , value) {
                      $("input[name='"+value+"']").next('.field_error').text(response.errors[value]);
                    });
                }else if (response.status === 'invalid') {
                    alert(response.msg);
                }else{
                    alert('Successfully Added.');
                    window.location.replace(base_url + 'home');
                }
            }
        })
    });

    //  EDIT CONTACT

    $('#editcontact').on('submit' , function(e){
        e.preventDefault();
        let formdata = new FormData($(this)[0]);
        $.ajax({
            url : base_url + 'home/savechanges',
            method : 'POST',
            data : formdata,
            dataType : 'json',
            processData : false,
            contentType : false,
            success : function(response) {
                if (response.status === 'failed') {
                    let keyNames = Object.keys(response.errors);
                    $(keyNames).each(function(index , value) {
                      $("input[name='"+value+"']").next('.field_error').text(response.errors[value]);
                    });
                }else if (response.status === 'invalid') {
                    alert(response.msg);
                }else{
                    alert('Successfully Added.');
                    window.location.replace(base_url + 'home');
                }
            },
        })
    });

    // Delete
    $('.deletecontact').on('click' , function() {
        let contact_id = $(this).attr('contact_id');
        let formdata = new FormData();
        formdata.append('contact_id' ,contact_id );
        Swal.fire({
            title: 'Are you sure you want to DELETE?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes',
            cancelButtonText: 'No'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    url : base_url + 'home/deletecontact',
                    method : 'POST',
                    data : formdata,
                    dataType : 'json',
                    processData : false,
                    contentType : false,
                    success : function(response){
                        Swal.fire('Deleted!','Contact deleted Successfully.','success');
                    }
                });
                location.reload();
            }
        })
    })
    function reset(){
        $('.field_error').text('');
    }
})

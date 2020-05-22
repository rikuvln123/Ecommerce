function validate(mfrm) {
    
   
        var name=mfrm.pname.value;
        var email=mfrm.pmail.value;
    
        var pass=mfrm.pass.value;
        var cpass=mfrm.cpass.value;
        var msg=document.getElementById("msg");
        msg.vis
            
        if(name==""){
             msg.innerHTML="please fillup all fields";
           mfrm.pname.focus;
            return false;
            
            
        }else if(email==""){
             msg.innerHTML="please fillup all fields";
           mfrm.pmail.focus;
            return false;
            
        } else if(pass==""){
             msg.innerHTML="please fillup all fields";
           mfrm.pass.focus;
            return false;
            
        }else if(cpass==""){
             msg.innerHTML="please fillup all fields";
       mfrm.cpass.focus;
            return false;
            
        }else if(pass!==cpass){
            msg.innerHTML="create password and confirm password must be match";
            mfrm.cpass.focus;
            return false;
            
        }else{
            return true;
        }
    }
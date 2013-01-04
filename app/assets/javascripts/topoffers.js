function TogPrivacy() {
var expand=document.getElementById('privacyFooter');
var info=document.getElementById('infoPrivacyFooter');
expand.style.display=(expand.style.display=='none')?'block': 'none';
info.innerHTML=(info.innerHTML=='Privacy Policy, Terms and Contact')?'Hide Privacy Policy and Terms': 'Privacy Policy, Terms and Contact';
}
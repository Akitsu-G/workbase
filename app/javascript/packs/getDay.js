import dayjs from 'dayjs';
import 'dayjs/locale/ja';

document.addEventListener("turbolinks:load", function(){
  const ymd = document.getElementById('ymd');
  const wkd = document.getElementById('weekday');
  if(!ymd == false){
    dayjs.locale('ja'); 
    const dt = dayjs();
    ymd.textContent = dt.format('YYYY/MM/DD');
    wkd.textContent = dt.format('dddd');
  }
}, false);

const cnt = setInterval(function(){
  const hms = document.getElementById('hms');
  if(!hms == false){
    let dt = dayjs().format('HH:mm:ss');
    document.getElementById('hms').textContent = dt;
  }else{
    clearInterval(cnt);
  }
}, 1000);
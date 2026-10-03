<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang web của Anh Duy</title>
<style>
body{background:#fff3b0;color:#8b0000;font-family:Arial,sans-serif;text-align:center;transition:.4s}
h1{color:#d90429}
button{font-family:inherit}
#dong-ho{font-size:42px;font-weight:bold;color:#1d3557;margin:5px 0 0}
#ngay-thang{margin:0 0 10px}
.tcc{display:flex;justify-content:center;align-items:center;flex-wrap:wrap;gap:8px;margin:10px auto 20px}
.o-mau{width:32px;height:32px;border-radius:50%;border:3px solid #1d3557;cursor:pointer}
.nc{padding:10px 16px;border:none;border-radius:8px;background:#1d3557;color:#fff;cursor:pointer}
.nc:hover{background:#457b9d}
.tt{width:90%;max-width:450px;margin:20px auto;padding:15px 20px;background:#1d3557;color:#fff;border-radius:15px;text-align:left}
.tt h2{margin-top:0;text-align:center;color:#ffd166}
.khung{display:flex;justify-content:space-between;align-items:flex-start;flex-wrap:wrap;gap:20px;padding:0 20px}
.mt{width:280px;box-sizing:border-box;margin:20px 0;padding:15px;background:#1d3557;border-radius:15px}
#mh{width:100%;box-sizing:border-box;height:50px;font-size:24px;text-align:right;padding:0 10px;margin-bottom:10px;border:none;border-radius:8px}
.nut{display:grid;grid-template-columns:repeat(4,1fr);gap:8px}
.nut button{height:50px;font-size:20px;border:none;border-radius:8px;cursor:pointer;background:#f1faee}
.nut button:hover{background:#a8dadc}
.nut .pt{background:#d90429;color:#fff}
.chat{width:320px;background:#1d3557;border-radius:15px;overflow:hidden;margin-top:20px}
.chat-td{background:#d90429;color:#fff;padding:12px;font-weight:bold}
#hop{height:300px;overflow-y:auto;padding:10px;background:#fff;display:flex;flex-direction:column}
.tin{max-width:80%;padding:8px 12px;margin:5px 0;border-radius:12px;text-align:left;word-wrap:break-word}
.tin.toi{margin-left:auto;background:#d90429;color:#fff}
.tin.duy{margin-right:auto;background:#e0f0f5;color:#1d3557}
.gy{display:flex;flex-wrap:wrap;gap:4px;padding:6px 10px 0}
.gy button{font-size:12px;padding:4px 8px;border:none;border-radius:10px;background:#f1faee;cursor:pointer}
.nhap{display:flex;gap:6px;padding:10px}
#on{flex:1;padding:10px;border:none;border-radius:8px;font-size:15px}
.khu{display:flex;justify-content:center;flex-wrap:wrap;gap:20px;padding:0 20px 40px}
.the{width:300px;box-sizing:border-box;background:#1d3557;color:#fff;border-radius:15px;padding:15px}
.the h3{margin:0 0 10px;color:#ffd166}
.the input,.the select{padding:8px;border:none;border-radius:8px;font-size:15px;margin:4px 0;max-width:100%;box-sizing:border-box}
.the button{padding:8px 14px;border:none;border-radius:8px;background:#f1faee;cursor:pointer;font-size:15px;margin:3px 2px}
.the button:hover{background:#a8dadc}
.kq{min-height:24px;margin:8px 0 0;font-weight:bold}
.to{font-size:22px!important;padding:14px 24px!important;background:#d90429!important;color:#fff}
.ott{font-size:32px!important}
canvas{background:#e0f0f5;border-radius:8px;max-width:100%}
.g3{display:grid;grid-template-columns:repeat(3,70px);gap:6px;justify-content:center}
.g3 button{height:70px;font-size:30px;margin:0}
.g4{display:grid;grid-template-columns:repeat(4,56px);gap:6px;justify-content:center}
.g4 button{height:56px;font-size:26px;margin:0}
.the ul{list-style:none;padding:0;text-align:left}
.the li{background:#2c4a73;margin:4px 0;padding:6px 10px;border-radius:8px;cursor:pointer;display:flex;justify-content:space-between}
.the li button{margin:0;padding:0 8px;background:#d90429;color:#fff}
</style>
</head>
<body>
<h1 id="chao">Xin chào!</h1>
<p>Chào mừng bạn đến với trang web của mình.</p>
<p id="dong-ho">00:00:00</p><p id="ngay-thang"></p>

<div class="tcc">
  <span>🎨 Đổi màu nền:</span>
  <div class="o-mau" style="background:#fff3b0" onclick="nen('#fff3b0','#8b0000')"></div>
  <div class="o-mau" style="background:#bde0fe" onclick="nen('#bde0fe','#1d3557')"></div>
  <div class="o-mau" style="background:#ffc8dd" onclick="nen('#ffc8dd','#8b0000')"></div>
  <div class="o-mau" style="background:#b7e4c7" onclick="nen('#b7e4c7','#1b4332')"></div>
  <div class="o-mau" style="background:#fff" onclick="nen('#fff','#222')"></div>
  <div class="o-mau" style="background:#222" onclick="nen('#222','#ffd166')"></div>
  <button class="nc" onclick="nen('hsl('+Math.random()*360+',80%,85%)','#222')">🎲 Ngẫu nhiên</button>
  <button class="nc" onclick="sangToi()">🌗 Sáng/Tối</button>
  <button class="nc" id="nhac" onclick="batNhac()">🎵 Bật nhạc</button>
  <button class="nc" onclick="phaoHoa()">🎆 Pháo hoa</button>
</div>

<div class="tt">
  <h2>Thông tin về tôi</h2>
  <p><b>Họ và tên:</b> Nguyễn Anh Duy</p>
  <p><b>Tuổi:</b> 10</p>
  <p><b>Lớp:</b> 5/7</p>
  <p><b>Sở thích:</b> Chơi game Liên Quân và Roblox</p>
</div>

<div class="khung">
  <div>
    <h2>Máy tính cầm tay</h2>
    <button class="nc" id="anhien" onclick="anHien()">Ẩn máy tính</button>
    <div class="mt" id="mt">
      <input type="text" id="mh" readonly>
      <div class="nut">
        <button onclick="n('7')">7</button><button onclick="n('8')">8</button><button onclick="n('9')">9</button><button class="pt" onclick="n('/')">÷</button>
        <button onclick="n('4')">4</button><button onclick="n('5')">5</button><button onclick="n('6')">6</button><button class="pt" onclick="n('*')">×</button>
        <button onclick="n('1')">1</button><button onclick="n('2')">2</button><button onclick="n('3')">3</button><button class="pt" onclick="n('-')">−</button>
        <button onclick="n('0')">0</button><button onclick="n('.')">.</button><button onclick="tinh()">=</button><button class="pt" onclick="n('+')">+</button>
        <button class="pt" onclick="mh.value=''" style="grid-column:span 2">C</button>
        <button class="pt" onclick="mh.value=mh.value.slice(0,-1)" style="grid-column:span 2">⌫</button>
      </div>
    </div>
  </div>
  <div>
    <h2>Trò chuyện</h2>
    <div class="chat">
      <div class="chat-td">💬 Trò chuyện với AnhDuy</div>
      <div id="hop"><div class="tin duy">Chào bạn! Mình là AnhDuy. Bấm gợi ý bên dưới hoặc gõ gì cũng được nhé!</div></div>
      <div class="gy">
        <button onclick="goi('kể chuyện cười')">😂 Chuyện cười</button>
        <button onclick="goi('câu đố')">🧩 Câu đố</button>
        <button onclick="goi('oẳn tù tì')">✌️ Oẳn tù tì</button>
        <button onclick="goi('mấy giờ rồi')">⏰ Mấy giờ</button>
        <button onclick="goi('tướng nào mạnh')">⚔️ Liên Quân</button>
        <button onclick="goi('roblox game gì hay')">🧱 Roblox</button>
      </div>
      <div class="nhap">
        <input type="text" id="on" placeholder="Nhập tin nhắn..." onkeydown="if(event.key==='Enter')gui()">
        <button class="nc" style="background:#f1faee;color:#000" onclick="gui()">Gửi</button>
      </div>
    </div>
  </div>
</div>

<h2>Góc giải trí</h2>
<div class="khu">

  <div class="the"><h3>🐍 Rắn săn mồi</h3>
    <canvas id="ran" width="280" height="280"></canvas>
    <div><button onclick="hd(0,-1)">⬆️</button><br><button onclick="hd(-1,0)">⬅️</button><button onclick="hd(0,1)">⬇️</button><button onclick="hd(1,0)">➡️</button></div>
    <button onclick="batDauRan()">▶ Bắt đầu</button>
    <p class="kq" id="ran-kq">Dùng phím mũi tên hoặc nút để chơi!</p></div>

  <div class="the"><h3>🃏 Nhớ thẻ bài</h3>
    <div class="g4" id="mem"></div>
    <p class="kq" id="mem-kq"></p><button onclick="mNew()">Ván mới</button></div>

  <div class="the"><h3>🐹 Đập chuột chũi (20s)</h3>
    <div class="g3" id="mole"></div>
    <p class="kq" id="mole-kq">Bấm bắt đầu!</p><button onclick="moleStart()">▶ Bắt đầu</button></div>

  <div class="the"><h3>⌨️ Gõ chữ nhanh (30s)</h3>
    <p class="kq" id="type-w" style="font-size:24px;color:#ffd166">Bấm bắt đầu</p>
    <input type="text" id="type-in" placeholder="Gõ từ trên vào đây..." oninput="typeCheck()">
    <button onclick="typeStart()">▶ Bắt đầu</button>
    <p class="kq" id="type-kq"></p></div>

  <div class="the"><h3>⭕ Cờ ca-rô 3x3 (bạn là X)</h3>
    <div class="g3" id="ttt"></div>
    <p class="kq" id="ttt-kq">Đến lượt bạn!</p><button onclick="tttMoi()">Ván mới</button></div>

  <div class="the"><h3>🎡 Vòng quay may mắn</h3>
    <input type="text" id="ds-quay" value="Gà rán, Pizza, Mì tôm, Bánh xèo, Hamburger" style="width:100%">
    <p style="font-size:12px;margin:2px">Ngăn cách các lựa chọn bằng dấu phẩy</p>
    <button onclick="quay()">🎲 Quay!</button>
    <p class="kq" id="quay-kq" style="font-size:22px">?</p></div>

  <div class="the"><h3>⏱️ Hẹn giờ</h3>
    <input type="number" id="phut" value="25" min="0.1" step="any" style="width:80px"> phút<br>
    <button onclick="henGio()">▶ Bắt đầu</button>
    <button onclick="clearInterval(hg);hgkq.textContent='Đã dừng'">⏹ Dừng</button>
    <p class="kq" id="hgkq" style="font-size:28px">0:00</p></div>

  <div class="the"><h3>🕐 Đồng hồ bấm giờ</h3>
    <p class="kq" id="bg-kq" style="font-size:28px">0.0</p>
    <button onclick="bgChay()">▶ Chạy</button><button onclick="bgDung()">⏸ Dừng</button><button onclick="bgReset()">↺ Xóa</button></div>

  <div class="the"><h3>📏 Chuyển đổi đơn vị</h3>
    <input type="number" id="cv-in" placeholder="Nhập số..." oninput="chuyen()" style="width:100px">
    <select id="cv-loai" onchange="chuyen()"></select>
    <p class="kq" id="cv-kq">Kết quả hiện ở đây</p></div>

  <div class="the"><h3>🌤️ Thời tiết</h3>
    <select id="tp"><option value="10.78,106.70">TP. Hồ Chí Minh</option><option value="21.03,105.85">Hà Nội</option><option value="16.05,108.20">Đà Nẵng</option><option value="11.31,106.10">Tây Ninh</option></select>
    <button onclick="thoiTiet()">Xem</button>
    <p class="kq" id="tt-kq">Bấm Xem (cần có mạng)</p></div>

  <div class="the"><h3>📝 Việc cần làm</h3>
    <input type="text" id="vl-in" placeholder="Thêm việc..." onkeydown="if(event.key==='Enter')themVL()">
    <button onclick="themVL()">Thêm</button>
    <ul id="vl-ul"></ul>
    <p style="font-size:12px;margin:0">Bấm vào việc để tick hoàn thành</p></div>

  <div class="the"><h3>🗒️ Ghi chú nhanh</h3>
    <textarea id="ghichu" rows="5" style="width:100%;box-sizing:border-box;border-radius:8px;border:none;padding:8px" placeholder="Gõ ghi chú, tự động lưu..." oninput="try{localStorage.setItem('gc',this.value)}catch(e){}"></textarea></div>

  <div class="the"><h3>⏳ Đếm ngược</h3>
    <input type="text" id="ten-sk" placeholder="Tên sự kiện"><br>
    <input type="date" id="ngay-sk"><br>
    <button onclick="batDauDem()">Bắt đầu</button>
    <p class="kq" id="dem-kq">Chọn ngày để đếm ngược.</p></div>

  <div class="the"><h3>🔢 Đoán số (1 - 100)</h3>
    <input type="number" id="so" placeholder="Nhập số..." onkeydown="if(event.key==='Enter')doan()">
    <button onclick="doan()">Đoán</button><button onclick="vanMoi()">Ván mới</button>
    <p class="kq" id="doan-kq">Đoán thử đi!</p></div>

  <div class="the"><h3>✂️ Oẳn tù tì</h3>
    <button class="ott" onclick="ottChon('keo')">✌️</button>
    <button class="ott" onclick="ottChon('bua')">✊</button>
    <button class="ott" onclick="ottChon('bao')">✋</button>
    <p class="kq" id="ott-kq">Chọn kéo, búa hoặc bao!</p>
    <p id="ott-d">Thắng: 0 | Hòa: 0 | Thua: 0</p></div>

  <div class="the"><h3>⚡ Bấm nhanh 10 giây</h3>
    <button id="nbam" class="to" onclick="bam()">BẤM BẮT ĐẦU</button>
    <p class="kq" id="bam-kq">Bấm để bắt đầu!</p>
    <p id="bam-kl">Kỷ lục: 0</p></div>
</div>

<script>
const $=id=>document.getElementById(id);
const rd=a=>a[Math.floor(Math.random()*a.length)];
const mh=$('mh'),hop=$('hop'),on=$('on'),hgkq=$('hgkq');

/* Chào + đồng hồ + màu nền */
const gio=new Date().getHours();
$('chao').textContent=(gio<11?'Chào buổi sáng':gio<18?'Chào buổi chiều':'Chào buổi tối')+', Anh Duy! 👋';
function dh(){const t=new Date();$('dong-ho').textContent=t.toLocaleTimeString('vi-VN');$('ngay-thang').textContent=t.toLocaleDateString('vi-VN',{weekday:'long',day:'numeric',month:'numeric',year:'numeric'})}
dh();setInterval(dh,1000);
function nen(b,c){document.body.style.backgroundColor=b;document.body.style.color=c}
let toi=false;
function sangToi(){toi=!toi;toi?nen('#222','#ffd166'):nen('#fff3b0','#8b0000')}

/* Pháo hoa */
function phaoHoa(){const c=document.createElement('canvas');c.width=innerWidth;c.height=innerHeight;c.style.cssText='position:fixed;left:0;top:0;pointer-events:none;z-index:9';document.body.appendChild(c);const x=c.getContext('2d');let p=[];
 for(let k=0;k<5;k++){const cx=Math.random()*c.width,cy=Math.random()*c.height/2+50,h=Math.random()*360;for(let i=0;i<50;i++){const a=Math.random()*6.28,s=Math.random()*5+1;p.push({x:cx,y:cy,vx:Math.cos(a)*s,vy:Math.sin(a)*s,l:60,h:h})}}
 let f=0;(function an(){x.clearRect(0,0,c.width,c.height);p.forEach(q=>{q.x+=q.vx;q.y+=q.vy;q.vy+=.05;q.l--;x.fillStyle='hsla('+q.h+',100%,60%,'+q.l/60+')';x.fillRect(q.x,q.y,3,3)});if(++f<70)requestAnimationFrame(an);else c.remove()})()}

/* Âm thanh */
let ac=null,nh=null,vt=0;
const gd=[262,330,392,330,262,330,392,523,494,392,330,392,440,392,330,294];
function not(f,d){if(!ac)ac=new(window.AudioContext||window.webkitAudioContext)();if(ac.state==='suspended')ac.resume();const o=ac.createOscillator(),g=ac.createGain();o.type='triangle';o.frequency.value=f;g.gain.setValueAtTime(.08,ac.currentTime);g.gain.exponentialRampToValueAtTime(.001,ac.currentTime+d);o.connect(g);g.connect(ac.destination);o.start();o.stop(ac.currentTime+d)}
function batNhac(){if(nh){clearInterval(nh);nh=null;$('nhac').textContent='🎵 Bật nhạc'}else{nh=setInterval(()=>not(gd[vt++%gd.length],.3),350);$('nhac').textContent='🔇 Tắt nhạc'}}

/* Máy tính */
function anHien(){const m=$('mt'),h=m.style.display==='none';m.style.display=h?'block':'none';$('anhien').textContent=h?'Ẩn máy tính':'Hiện máy tính'}
function n(v){mh.value+=v}
function tinh(){try{if(!/^[0-9+\-*/.]+$/.test(mh.value)){mh.value='Lỗi';return}const k=Function('return '+mh.value)();mh.value=Number.isFinite(k)?k:'Lỗi'}catch(e){mh.value='Lỗi'}}

/* Rắn săn mồi */
const cx=$('ran').getContext('2d');let rn=[{x:7,y:7}],hu={x:1,y:0},mo={x:3,y:3},dr=0,tr=null;
function mq(){return{x:Math.floor(Math.random()*14),y:Math.floor(Math.random()*14)}}
function veRan(){cx.fillStyle='#e0f0f5';cx.fillRect(0,0,280,280);cx.fillStyle='#d90429';cx.fillRect(mo.x*20,mo.y*20,18,18);cx.fillStyle='#1d3557';rn.forEach(o=>cx.fillRect(o.x*20,o.y*20,18,18))}
function buoc(){const d={x:rn[0].x+hu.x,y:rn[0].y+hu.y};
 if(d.x<0||d.y<0||d.x>13||d.y>13||rn.some(o=>o.x==d.x&&o.y==d.y)){clearInterval(tr);tr=null;$('ran-kq').textContent='😵 Thua rồi! Điểm: '+dr;return}
 rn.unshift(d);if(d.x==mo.x&&d.y==mo.y){dr++;mo=mq();$('ran-kq').textContent='Điểm: '+dr}else rn.pop();veRan()}
function hd(x,y){if(x!==-hu.x||y!==-hu.y)hu={x:x,y:y}}
function batDauRan(){clearInterval(tr);rn=[{x:7,y:7}];hu={x:1,y:0};mo=mq();dr=0;$('ran-kq').textContent='Điểm: 0';veRan();tr=setInterval(buoc,150)}
veRan();
document.addEventListener('keydown',e=>{const k={ArrowUp:[0,-1],ArrowDown:[0,1],ArrowLeft:[-1,0],ArrowRight:[1,0]}[e.key];if(k&&tr){e.preventDefault();hd(k[0],k[1])}});

/* Nhớ thẻ bài */
let mc=[],ml=null,mk=false,mm=0;
function mNew(){const e=['🐱','🐶','🐸','🦊','🐼','🐵','🦁','🐯'];mc=[...e,...e].sort(()=>Math.random()-.5).map(v=>({v:v,o:false,d:false}));ml=null;mk=false;mm=0;mV();$('mem-kq').textContent='Lật tìm cặp giống nhau!'}
function mV(){const g=$('mem');g.innerHTML='';mc.forEach((c,i)=>{const b=document.createElement('button');b.textContent=c.o||c.d?c.v:'❓';b.onclick=()=>mF(i);g.appendChild(b)})}
function mF(i){const c=mc[i];if(mk||c.o||c.d)return;c.o=true;mV();if(ml===null){ml=i;return}mm++;const a=mc[ml];
 if(a.v===c.v){a.d=c.d=true;a.o=c.o=false;ml=null;mV();if(mc.every(x=>x.d)){$('mem-kq').textContent='🎉 Xong sau '+mm+' lượt!';phaoHoa()}}
 else{mk=true;setTimeout(()=>{a.o=c.o=false;ml=null;mk=false;mV()},700)}}
mNew();

/* Đập chuột chũi */
let mol=null,md=0,mI=null,mT=null;
const ho=$('mole');for(let i=0;i<9;i++){const b=document.createElement('button');b.textContent='🕳️';b.onclick=()=>{if(i===mol){md++;mol=null;b.textContent='💥'}};ho.appendChild(b)}
function xoaHo(){[...ho.children].forEach(b=>b.textContent='🕳️')}
function moleStart(){clearInterval(mI);clearInterval(mT);md=0;let t=20;$('mole-kq').textContent='Điểm: 0 | 20s';
 mI=setInterval(()=>{xoaHo();mol=Math.floor(Math.random()*9);ho.children[mol].textContent='🐹'},700);
 mT=setInterval(()=>{t--;if(t<=0){clearInterval(mI);clearInterval(mT);mol=null;xoaHo();$('mole-kq').textContent='Hết giờ! Điểm: '+md}else $('mole-kq').textContent='Điểm: '+md+' | '+t+'s'},1000)}

/* Gõ chữ nhanh */
const tw=['game','roblox','liên quân','máy tính','bạn bè','trường học','siêu nhân','bóng đá','xin chào','học sinh'];
let tc='',ts=0,tT=null;
function nextW(){tc=rd(tw);$('type-w').textContent=tc}
function typeStart(){ts=0;let t=30;nextW();$('type-in').value='';$('type-in').focus();clearInterval(tT);
 tT=setInterval(()=>{t--;if(t<=0){clearInterval(tT);tc='';$('type-w').textContent='Hết giờ!';$('type-kq').textContent='Bạn gõ đúng '+ts+' từ!'}else $('type-kq').textContent='Điểm: '+ts+' | '+t+'s'},1000)}
function typeCheck(){const i=$('type-in');if(tc&&i.value.trim().toLowerCase()===tc){ts++;i.value='';nextW()}}

/* Cờ ca-rô */
let bc,het;const L=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
const thang=(b,p)=>L.some(l=>l.every(i=>b[i]==p));
function tim(p){for(let i=0;i<9;i++)if(!bc[i]){bc[i]=p;const w=thang(bc,p);bc[i]='';if(w)return i}return null}
function veT(){$('ttt').innerHTML='';bc.forEach((v,i)=>{const b=document.createElement('button');b.textContent=v;b.onclick=()=>danh(i);$('ttt').appendChild(b)})}
function kt(m){het=true;$('ttt-kq').textContent=m}
function danh(i){if(het||bc[i])return;bc[i]='X';veT();
 if(thang(bc,'X'))return kt('🎉 Bạn thắng!');if(!bc.includes(''))return kt('🤝 Hòa!');
 let m=tim('O');if(m===null)m=tim('X');if(m===null&&!bc[4])m=4;
 if(m===null)m=rd(bc.map((v,k)=>v?-1:k).filter(k=>k>=0));
 bc[m]='O';veT();if(thang(bc,'O'))kt('😜 Máy thắng!');else if(!bc.includes(''))kt('🤝 Hòa!')}
function tttMoi(){bc=Array(9).fill('');het=false;$('ttt-kq').textContent='Đến lượt bạn!';veT()}
tttMoi();

/* Vòng quay + hẹn giờ */
function quay(){const ds=$('ds-quay').value.split(',').map(s=>s.trim()).filter(Boolean);if(ds.length<2){$('quay-kq').textContent='Nhập ít nhất 2 lựa chọn!';return}let i=0;const t=setInterval(()=>{$('quay-kq').textContent=rd(ds);if(++i>20){clearInterval(t);$('quay-kq').textContent='🎉 '+$('quay-kq').textContent}},100)}
let hg=null;
function henGio(){clearInterval(hg);let s=Math.round(parseFloat($('phut').value)*60);if(!(s>0))return;
 function c(){hgkq.textContent=Math.floor(s/60)+':'+String(s%60).padStart(2,'0');if(s--<=0){clearInterval(hg);hgkq.textContent='⏰ Hết giờ!';not(880,.6);setTimeout(()=>not(880,.6),700)}}
 c();hg=setInterval(c,1000)}

/* Đồng hồ bấm giờ */
let bgT=null,bgS=0;
function bgV(){$('bg-kq').textContent=(bgS/10).toFixed(1)}
function bgChay(){if(bgT)return;bgT=setInterval(()=>{bgS++;bgV()},100)}
function bgDung(){clearInterval(bgT);bgT=null}
function bgReset(){bgDung();bgS=0;bgV()}

/* Chuyển đổi đơn vị */
const cvd={'m → cm':v=>v*100,'cm → m':v=>v/100,'km → m':v=>v*1000,'m → km':v=>v/1000,'kg → g':v=>v*1000,'g → kg':v=>v/1000,'°C → °F':v=>v*9/5+32,'°F → °C':v=>(v-32)*5/9};
Object.keys(cvd).forEach(k=>{const o=document.createElement('option');o.textContent=k;$('cv-loai').appendChild(o)});
function chuyen(){const v=parseFloat($('cv-in').value);$('cv-kq').textContent=isNaN(v)?'Kết quả hiện ở đây':'= '+Math.round(cvd[$('cv-loai').value](v)*1000)/1000+' '+$('cv-loai').value.split(' → ')[1]}

/* Thời tiết */
function thoiTiet(){const p=$('tp').value.split(',');$('tt-kq').textContent='Đang tải...';
 fetch('https://api.open-meteo.com/v1/forecast?latitude='+p[0]+'&longitude='+p[1]+'&current_weather=true').then(r=>r.json()).then(d=>{$('tt-kq').textContent='🌡️ '+d.current_weather.temperature+'°C | 💨 '+d.current_weather.windspeed+' km/h'}).catch(()=>{$('tt-kq').textContent='Không tải được (kiểm tra mạng)'})}

/* Việc cần làm + ghi chú */
let vl=[];try{vl=JSON.parse(localStorage.getItem('vl'))||[]}catch(e){}
function veVL(){const u=$('vl-ul');u.innerHTML='';vl.forEach((v,i)=>{const li=document.createElement('li');li.textContent=(v.x?'✅ ':'⬜ ')+v.t;li.onclick=()=>{v.x=!v.x;luuVL()};const b=document.createElement('button');b.textContent='×';b.onclick=e=>{e.stopPropagation();vl.splice(i,1);luuVL()};li.appendChild(b);u.appendChild(li)})}
function luuVL(){try{localStorage.setItem('vl',JSON.stringify(vl))}catch(e){}veVL()}
function themVL(){const t=$('vl-in').value.trim();if(!t)return;vl.push({t:t,x:false});$('vl-in').value='';luuVL()}
veVL();
try{$('ghichu').value=localStorage.getItem('gc')||''}catch(e){}

/* Đếm ngược */
let dn=null;
function chayDem(ten,ngay){clearInterval(dn);function c(){const cl=new Date(ngay+'T00:00:00')-new Date();if(cl<=0){$('dem-kq').textContent='🎉 Đã đến '+ten+' rồi!';clearInterval(dn);return}const g=Math.floor(cl/1000);$('dem-kq').textContent='Còn '+Math.floor(g/86400)+' ngày '+Math.floor(g%86400/3600)+' giờ '+Math.floor(g%3600/60)+' phút '+g%60+' giây đến '+ten}c();dn=setInterval(c,1000)}
function batDauDem(){const ten=$('ten-sk').value.trim()||'sự kiện',ngay=$('ngay-sk').value;if(!ngay){$('dem-kq').textContent='Hãy chọn ngày trước nhé!';return}try{localStorage.setItem('dn',JSON.stringify({ten:ten,ngay:ngay}))}catch(e){}chayDem(ten,ngay)}
try{const d=JSON.parse(localStorage.getItem('dn'));if(d&&d.ngay){$('ten-sk').value=d.ten;$('ngay-sk').value=d.ngay;chayDem(d.ten,d.ngay)}}catch(e){}

/* Đoán số */
let sb=Math.floor(Math.random()*100)+1,ld=0;
function doan(){const s=parseInt($('so').value),k=$('doan-kq');if(isNaN(s)||s<1||s>100){k.textContent='Nhập số từ 1 đến 100!';return}ld++;k.textContent=s==sb?'🎉 Đúng rồi! Số '+sb+' (đoán '+ld+' lần)':s<sb?'⬆️ Lớn hơn '+s:'⬇️ Nhỏ hơn '+s;$('so').value=''}
function vanMoi(){sb=Math.floor(Math.random()*100)+1;ld=0;$('doan-kq').textContent='Ván mới! Đoán đi!'}

/* Oẳn tù tì */
const tO={keo:'✌️ Kéo',bua:'✊ Búa',bao:'✋ Bao'},dO={thang:0,hoa:0,thua:0};
function soO(a,b){if(a===b)return'hoa';return(a=='keo'&&b=='bao')||(a=='bua'&&b=='keo')||(a=='bao'&&b=='bua')?'thang':'thua'}
function ottChon(a){const m=rd(['keo','bua','bao']),k=soO(a,m);dO[k]++;$('ott-kq').textContent=tO[a]+' vs '+tO[m]+' → '+{thang:'🎉 Bạn thắng!',hoa:'🤝 Hòa!',thua:'😜 Bạn thua!'}[k];$('ott-d').textContent='Thắng: '+dO.thang+' | Hòa: '+dO.hoa+' | Thua: '+dO.thua}

/* Bấm nhanh */
let db=false,sl=0,kl=0;
function bam(){const nb=$('nbam'),k=$('bam-kq');
 if(!db){db=true;sl=1;let c=10;nb.textContent='BẤM! (1)';k.textContent='Còn 10 giây';
  const t=setInterval(()=>{c--;if(c>0)k.textContent='Còn '+c+' giây';else{clearInterval(t);db=false;if(sl>kl){kl=sl;$('bam-kl').textContent='Kỷ lục: '+kl;k.textContent='🏆 '+sl+' lần - Kỷ lục mới!'}else k.textContent='Hết giờ! '+sl+' lần.';nb.textContent='CHƠI LẠI'}},1000)}
 else{sl++;nb.textContent='BẤM! ('+sl+')'}}

/* ===== Trò chuyện ===== */
let choTen=false,tenBan='',cdHT=null,dOTT=false;
const cauDo=[
 {h:'Cái gì càng lấy đi càng to?',d:['hố'],g:'Cái hố!'},
 {h:'Cái gì luôn đi tới mà không bao giờ quay lại?',d:['thời gian'],g:'Thời gian!'},
 {h:'Tháng nào có 28 ngày?',d:['tất cả','tháng nào cũng','12'],g:'Tháng nào cũng có 28 ngày!'},
 {h:'Cái gì của bạn nhưng người khác dùng nhiều hơn bạn?',d:['tên'],g:'Tên của bạn!'},
 {h:'Con gì đập thì sống, không đập thì chết?',d:['bóng'],g:'Quả bóng!'}];
const cuoi=[
 'Cô hỏi: "Con gì ăn cỏ?" Tí đáp: "Dạ con trâu." Cô hỏi: "Còn con gì nữa?" Tí đáp: "Dạ con trâu con ạ!" 😂',
 'Mẹ hỏi: "Sao con được 0 điểm?" Con đáp: "Dạ vì cô không cho điểm âm ạ!" 🤣',
 'Hai con cá đi dạo, một con nói: "Trời mưa to quá!" Con kia nói: "Kệ đi, mình ở dưới nước mà!" 🐟',
 'Tại sao máy tính không bao giờ đói? Vì nó luôn có bộ nhớ đầy ắp! 💻'];
const luat=[
 [['cũng thích','cũng chơi','cũng vậy','cũng thế','mình cũng','tớ cũng','tui cũng','em cũng'],['Ui trùng hợp thế!','Wow, giống mình quá!']],
 [['liên quân','tướng','rank','xếp hạng','mùa giải','lq'],['Mình hay chơi Murad và Florentino!','Mình đang cố leo rank Liên Quân, bạn rank gì rồi?','Mình thấy Nakroth và Butterfly mạnh lắm!','Chơi Liên Quân phải đi nhóm mới thắng nè!']],
 [['roblox','blox fruits','brookhaven','adopt me'],['Mình thích chơi Blox Fruits và Brookhaven!','Roblox vui lắm, có Adopt Me, Blox Fruits...','Bạn chơi Roblox với bạn bè không?']],
 [['sinh nhật'],['Sinh nhật vui lắm, được ăn bánh kem! 🎂','Chúc mừng sinh nhật nha! 🎉']],
 [['gia đình','ba mẹ','bố mẹ','anh trai','chị gái','em trai','em gái'],['Gia đình là quan trọng nhất! Nhà bạn có mấy người?','Cuối tuần mình hay đi chơi với gia đình lắm!']],
 [['bạn bè','bạn thân'],['Mình có nhiều bạn lắm, hay chơi game cùng nhau!','Bạn thân của bạn là ai vậy?']],
 [['truyện tranh','đọc truyện','conan','doraemon'],['Mình thích đọc Doraemon và Conan lắm!','Bạn đang đọc bộ truyện nào?']],
 [['youtube','tiktok','video'],['Mình hay xem YouTube về Liên Quân và Roblox!','Bạn hay xem kênh nào vậy?']],
 [['ghét thể thao','không thích thể thao'],['Ồ vậy hả, mình thì thích vận động lắm!']],
 [['thể thao','đá bóng','đá banh','bóng đá','bóng rổ','cầu lông','bơi','đạp xe','chạy bộ'],['Mình thích đá bóng nhất!','Mình thích bơi lội lắm!','Mình thích cầu lông!','Mình thích bóng rổ!','Mình thích đạp xe!']],
 [['ghét môn','không thích môn','sợ môn','môn khó'],['Mình hơi sợ môn Tập làm văn!','Mình thấy môn Toán khó nhất.']],
 [['môn gì','môn nào','môn học','thích môn','mốn gì','mốn nào','thích mốn'],['Mình thích môn Toán!','Mình thích môn Thể dục nhất!','Mình thích môn Tiếng Anh!','Mình thích môn Tin học!']],
 [['ăn gì','thích ăn','món gì','món nào'],['Mình thích ăn gà rán nhất!','Mình mê pizza lắm!','Mình thích mì tôm trứng!','Mình thích bánh xèo!']],
 [['uống gì','thích uống','nước gì'],['Mình thích uống trà sữa!','Mình thích nước cam!','Mình mê coca lắm!']],
 [['xem gì','phim gì','phim nào','hoạt hình'],['Mình thích xem Doraemon!','Mình thích xem phim siêu anh hùng!']],
 [['màu gì','màu nào'],['Mình thích màu xanh dương!','Mình thích màu đỏ!','Mình thích màu vàng!']],
 [['con gì','con vật','thú cưng'],['Mình thích mèo!','Mình thích chó lắm!','Mình thích cá heo!']],
 [['thích gì','thích nhất','yêu thích','sở thích'],['Mình thích chơi game nhất!','Mình thích đá bóng!','Mình thích ăn kem!']],
 [['không thích','ghét','chán'],['Ồ vậy hả, mỗi người một sở thích mà.','Ủa sao vậy? Kể mình nghe với!']],
 [['khỏe không','khoẻ không','thế nào','sao rồi'],['Mình khỏe nè! Còn bạn thì sao?']],
 [['đang làm gì','làm gì đó','làm gì vậy'],['Mình đang trò chuyện với bạn nè!']],
 [['game','chơi'],['Chơi game vui lắm! Bạn thích game nào nhất?']],
 [['thắng','win'],['Chà, giỏi quá! Kể mình nghe đi!']],
 [['thua','tệ','dở'],['Không sao đâu, ván sau gỡ lại!','Đừng buồn, ai cũng có lúc thua mà.']],
 [['tuổi'],['Mình 10 tuổi.']],
 [['lớp'],['Mình học lớp 5/7.']],
 [['học'],['Học hành cũng quan trọng nhưng nhớ nghỉ ngơi nhé!']],
 [['đói','ăn'],['Mình cũng đói rồi nè, đi ăn thôi!']],
 [['buồn','mệt'],['Đừng buồn nha, có mình ở đây trò chuyện với bạn nè!']],
 [['vui','tuyệt','giỏi'],['Mình cũng vui lắm!','Hehe, cảm ơn bạn nha!']],
 [['haha','hihi','hehe','kkk','=))'],['Haha, vui ghê!','Hihi, bạn làm mình cười luôn.']],
 [['cảm ơn','cám ơn','thanks'],['Không có gì đâu!']],
 [['xin lỗi'],['Không sao đâu mà!']],
 [['tạm biệt','bye','ngủ ngon','đi ngủ'],['Tạm biệt bạn nha, hẹn gặp lại!']],
 [['yêu','thương'],['Hihi, ngại quá à!','Mình cũng quý bạn lắm!']],
 [['chào','hello','alo'],['Chào bạn! Rất vui được trò chuyện với bạn.']]];
const ngau=['Ừ, mình nghe nè!','Hay đó, kể thêm đi!','Haha, đúng rồi!','Ủa vậy hả? Kể mình nghe thêm đi!'];

function traLoi(t){
 const s=t.toLowerCase();
 if(choTen){choTen=false;tenBan=t.trim().split(/\s+/).slice(-2).join(' ');return'Tên đẹp đấy! 😊 Rất vui được làm quen, '+tenBan+'!'}
 if(cdHT){const c=cdHT;cdHT=null;
  if(/không biết|bó tay|chịu/.test(s))return'Đáp án là: '+c.g+' Gõ "câu đố" để chơi tiếp!';
  if(c.d.some(x=>s.includes(x)))return'Đúng rồi, bạn giỏi quá! 🎉 '+c.g;
  return'Sai rồi nha! Đáp án là: '+c.g+' Gõ "câu đố" để chơi tiếp!'}
 if(dOTT){
  if(/thôi|dừng|hết/.test(s)){dOTT=false;return'Okê, hết chơi nhé! 😄'}
  const a=s.includes('kéo')?'keo':s.includes('búa')?'bua':s.includes('bao')?'bao':null;
  if(!a)return'Bạn gõ "kéo", "búa" hoặc "bao" nhé! (Gõ "thôi" để dừng)';
  const m=rd(['keo','bua','bao']),k=soO(a,m);
  return'Mình ra '+tO[m]+'. '+{thang:'Bạn thắng rồi! 🎉',hoa:'Hòa nè!',thua:'Mình thắng rồi! 😜'}[k]+' Chơi tiếp đi!'}
 if(/oẳn tù tì|kéo búa bao|oẳn tù xì/.test(s)){dOTT=true;return'Chơi nào! Bạn ra "kéo", "búa" hay "bao"? (Gõ "thôi" để dừng)'}
 if(/câu đố|đố mình|đố vui/.test(s)){cdHT=rd(cauDo);return'Câu đố nè: '+cdHT.h}
 if(/chuyện cười|truyện cười|kể chuyện|nói đùa/.test(s))return rd(cuoi);
 if(/mấy giờ|giờ rồi|bây giờ/.test(s))return'Bây giờ là '+new Date().toLocaleTimeString('vi-VN')+' đó bạn!';
 if(/ngày mấy|thứ mấy|ngày bao nhiêu/.test(s))return'Hôm nay là '+new Date().toLocaleDateString('vi-VN',{weekday:'long',day:'numeric',month:'numeric',year:'numeric'})+'.';
 if(s.includes('tên')){choTen=true;return'Mình tên là Nguyễn Anh Duy. Còn bạn tên gì?'}
 if(tenBan&&/chào|hello|alo/.test(s))return'Chào '+tenBan+'! Hôm nay bạn thế nào?';
 for(const[k,v]of luat)if(k.some(x=>s.includes(x)))return rd(v);
 if(/(^|\s)hi($|\s|!|\.)/.test(s))return'Chào bạn! Rất vui được trò chuyện với bạn.';
 return rd(ngau)}

function them(nd,loai){const d=document.createElement('div');d.className='tin '+loai;d.textContent=nd;hop.appendChild(d);hop.scrollTop=hop.scrollHeight;return d}
function gui(){const nd=on.value.trim();if(!nd)return;them(nd,'toi');on.value='';
 const g=them('AnhDuy đang gõ...','duy');
 setTimeout(()=>{g.textContent=traLoi(nd);hop.scrollTop=hop.scrollHeight},900)}
function goi(t){on.value=t;gui()}
</script>
</body>
</html>

<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="YiXiangLibrary._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:100%;border-bottom:2px solid #b6b7bc;padding:0px 0px 15px 0px;">
<img  src="img/5.jpg" style="display:block;margin:auto;" />
</div>
<div class="index_ul" style="width:100%;border-bottom:2px solid #b6b7bc;padding:0px 5px 15px 5px;">
    <h1 style="display:inline;margin:5px 5px 10px 3px;">[病例]</h1>
    <h3 style="display:inline;">你可以了解的更多</h3>
    <h3 style="display:block;float:right;"><a href="Bingli.aspx"><<了解更多</a></h3>
    <div>
    <ul style="font-size:medium;">
    <li style="margin:5px;"><a href="#">我国人群高血压发病的重要危险因素有哪些？</a>
    </li>
    <li style="margin:5px;"><a href="#">心脏功能分几级?心功能和心衰分级是否一样?</a>
    </li>
    <li style="margin:5px;"><a href="#">糖尿病患者为何要强调规律生活？</a>
    </li>
    </ul>
    </div>
</div>

<div class="index_ul" style="width:100%;border-bottom:2px solid #b6b7bc;padding:0px 5px 15px 5px;">
    <h1 style="display:inline;margin:5px 5px 10px 3px;">[提问]</h1>
    <h3 style="display:inline;">病久自成医</h3>
    <h3 style="display:block;float:right;"><a><<了解更多</a></h3>
    <div>
    <ul style="font-size:medium;">
    <li style="margin:5px;"><a href="#">八岁还没换门牙我听其它人话发育不良引起的，是吗？？</a>
    </li>
    <li style="margin:5px;"><a href="#">天天刷牙为吗牙齿还是发黄，有什么办法可以使牙齿变白吗</a>
    </li>
    <li style="margin:5px;"><a href="#">病毒感冒引起的面部神经炎，该怎样治疗，现在一笑嘴角就抽搐？</a>
    </li>
    </ul>
    </div>
</div>

<div>
    <h1 style="display:inline;margin:5px 5px 10px 3px;">[医生]</h1>
    <h3 style="display:inline;margin:5px 5px 10px 3px;">热心医生</h4>
    <br />
    <div class="index_doctor">
    <a href="#">
        <h2 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">李某</h2>
        <h3 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">皮肤科医师</h3>
        <h4 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">专长于消化系肿瘤的早期检诊、防治及其基础研究。</h4>
    </a>
    </div>

    <div class="index_doctor">
    <a href="#">
        <h2 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">李某</h2>
        <h3 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">皮肤科医师</h3>
        <h4 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">专长于消化系肿瘤的早期检诊、防治及其基础研究。</h4>
    </a>
    </div>

    <div class="index_doctor">
    <a href="#">
        <h2 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">李某</h2>
        <h3 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">皮肤科医师</h3>
        <h4 style="display:block;margin:auto;color:Gray;text-align:center;margin:5px;">专长于消化系肿瘤的早期检诊、防治及其基础研究。</h4>
    </a>
    </div>
</div>
</asp:Content>

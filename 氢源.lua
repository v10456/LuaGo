
pcall(function()
xx=
{
  LinearLayout;
  orientation="vertical";
  layout_height="fill";
  layout_width="fill";
  id="主",
  
{
    LinearLayout;--线性布局
    orientation='vertical';--重力属性
    layout_width='fill';--布局宽度
    --layout_height='150dp';--布局高度
    --gravity='center';--默认居中
    gravity='right|bottom';--默认居中
    {
      TextView;--文本控件
      layout_width='100dp';--文本宽度
      layout_height='40dp';--文本高度
      gravity='center';--重力属性
      --textColor='#FFFFFFFF';--文字颜色
      text='3 秒|跳 过';--显示的文字
      textSize='15sp';--文字大小
      layout_marginRight='10dp';--布局右距
      
      layout_marginBottom='10dp';--布局底距
      id="跳过";
      onClick=function()
       -- 退出页面()
        dialog33333333.dismiss()
      -- ti.stop()--结束定时器
       --task(50,function()
        -- activity.startFusionActivity("mainWebView")
         --end)

      end
    };
  };
  {
    -- VideoView;
    LuaWebView,
    id="UiManagergetFragmentgetWebView29";
    layout_height="fill";
    layout_height="fill";
  };

  
};




--uiManager.addView(loadlayout(xx))
--activity.setContentView(loadlayout(xx))
local AlertDialog = luajava.bindClass "android.app.AlertDialog"
dialog33333333=AlertDialog.Builder(this)
.setMessage("感谢支持，如果有发现违规，危险广告，请截图联系我屏蔽它，因为A广告联盟有时无法过滤这些广告，需要手动屏蔽")
--.setTitle("标题")
.setView(loadlayout(xx))
--[[.setPositiveButton("确定",{onClick=function(v)end})
.setNegativeButton("取消",nil)

.show()]]
.setCancelable(false) --弹窗禁止触摸  
p333=dialog33333333.getWindow().getAttributes()
    --p.width=(activity.Width-200);
    p333.height=(activity.height-200);
    dialog33333333.getWindow().setAttributes(p333);

--url=Uri.parse("http://yun.abbcca.com/public/uploads/20190725/354/hTnkLZjq.mp4")
--video.setVideoURI(url)
--开始播放&设置播放控制器
--video.start()

随机字符=math.random(0,10)
if 随机字符==0 then
  
  随机链接="https://www.profitablecpmgate.com/kcr6nxjy9s?key=f308c8a6607b5e986de4533ecd2abb6c"
   elseif 随机字符==1 then
随机链接="https://www.profitablecpmgate.com/awavf0z1?key=e00abaedea0199364b0d08f2e80f8d7f"
elseif 随机字符==2 then
  随机链接="https://www.profitablecpmgate.com/ryech4r1?key=ebb2990d4b205c2916fa0a6bd3e606a6"
  elseif 随机字符==3 then
  随机链接="https://www.profitablecpmgate.com/fcks3cgq5?key=3402295040a082249ce09c4f06610ecd"
  
  elseif 随机字符==4 then
  随机链接="https://www.profitablecpmgate.com/yh34v0awe?key=4d1919769178f100d8a028b25ab41c1b"
  
  elseif 随机字符==5 then
  随机链接="https://www.profitablecpmgate.com/desddikc?key=a675d95672c04b430071706b4c5901c0"
  
  
  elseif 随机字符==6 then
  随机链接="https://www.profitablecpmgate.com/s1p33kp1x?key=ae8938eca0358c60e4a7b31605897748"
  
  
  elseif 随机字符==7 then
  随机链接="https://www.profitablecpmgate.com/ykkpzis6e?key=818815639445aa9720748d8403f4c7f0"
  
    elseif 随机字符==8 then
随机链接="https://www.profitablecpmgate.com/p8ctyzrg0?key=09a3d3f91115c9877dc010c74a8d863e"
  
  elseif 随机字符==9 then
  随机链接="https://www.profitablecpmgate.com/m4h7rxv2?key=f4620315e271a560883a517df9410766"
  
  
  elseif 随机字符==10 then
  随机链接="http://wyiqopu123.github.io"
  
end


--task(500,function()
UiManagergetFragmentgetWebView29.loadUrl(随机链接)


local DownloadListenerc = luajava.bindClass "android.webkit.DownloadListener"
 

local WebChromeClient = luajava.bindClass "android.webkit.WebChromeClient"
local WebViewClient = luajava.bindClass "android.webkit.WebViewClient"
local DownloadListener = luajava.bindClass "android.webkit.DownloadListener"


local DownloadListener = luajava.bindClass "android.webkit.DownloadListener"
 local WebChromeClient = luajava.bindClass "android.webkit.WebChromeClient"
local WebViewClient = luajava.bindClass "android.webkit.WebViewClient"
local DownloadListener = luajava.bindClass "android.webkit.DownloadListener"

 --这里定义的变量是用于之后储存onShowFileChooser的回调
  --local uploadFile
  UiManagergetFragmentgetWebView29.setWebChromeClient(luajava.override(WebChromeClient,{
    onJsAlert=function(a,view,url,message,result)
      --网页提示弹框
      --在onJsAlert中，确认和取消没有区别
      --确认
     -- result.confirm()
      --取消
      --result.cancel()
      --print("Alert消息: "..message)
      return true
    end,
    onJsConfirm=function(a,view,url,message,result)
      --网页确认弹框
      --确认
      --result.confirm()
      --取消
      --result.cancel()
     -- print("Confirm消息: "..message)
      return true
    end,
    onJsPrompt=function(a,view,url,message,value,result)
      --网页输入弹框
      --空确认
      --result.confirm()
      --取消
      --result.cancel()
      --确认并返回输入文字
      --result.confirm("这里是输入的内容")
      --print("Prompt消息: "..message)
      return true
    end,
    onConsoleMessage=function(a,message)
      --控制台消息
      --print("Console消息: "..message.message())
      return true
    end,
    onReceivedTitle=function(a,view,title)
      --收到网页标题
     -- activity.uiManager.toolbar.titleText=title
    end,
    onReceivedIcon=function(a,view,bitmap)
      --收到网页图标，是个Bitmap对象
    end,
    onProgressChanged=function(a,view,progress)
         end,
    onShowFileChooser=function(a, view, valueCallback, fileChooserParams)
     
      return true
    end,
  }))
  
  

 UiManagergetFragmentgetWebView29.setDownloadListener(DownloadListener{
    onDownloadStart=function(url, userAgent, contentDisposition, mimetype, contentLength)
      -- 详细的下载监听我代码写的太长了
      -- 所以请参见我的“各种下载”项目
    -- print("发现下载行为，\n文件描述为: "..contentDisposition.."\n文件类型为: "..mimetype.."\n文件大小为"..contentLength.."\n下载链接是: "..url)
    pcall(function()
UiManagergetFragmentgetWebView29.loadUrl(随机链接)
end)

    end
  })

 


dialog33333333.dismiss()


--广告=4
ti9=Ticker()
ti9.Period=25555
ti9.onTick=function()
pcall(function()
UiManagergetFragmentgetWebView29.loadUrl(随机链接)
end)
end
--启动Ticker定时器




end)
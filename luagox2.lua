《《应用管理器（整合修改）》》
《《--Source：氚-Tritium 2957148920
--OpenSource:Apache License Version

--2023-2-25：优化变量与部分语法问题
--2023-2-24：修改数据加载方式（更流畅）

--这是一个简洁美观的应用管理器
--ps：原著作者已经找不到了

--导入所需库
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

import {"android.net.Uri",
  "android.widget.GridView",
  "android.widget.ImageView",
  "android.widget.ProgressBar",
  "com.androlua.LuaAdapter",
  "java.lang.Thread",
  "java.io.FileOutputStream",
  "android.webkit.MimeTypeMap",
  "android.graphics.Color",
  "android.content.res.ColorStateList",
  "android.graphics.Canvas",
  "android.view.WindowManager",
  "com.androlua.LuaUtil",

  "android.app.AlertDialog",
  "android.content.Intent",
  "android.view.View",
  "android.icu.util.Calendar",
  "java.util.Calendar",
  "android.graphics.Typeface",
  "android.graphics.ColorFilter",
  "android.graphics.drawable.GradientDrawable",
  "java.io.File",
  "android.graphics.Bitmap",
  "android.widget.TextView",

}
--波纹函数
function 波纹函数(id,颜色)
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  Pretend=activity.Resources.getDrawable(ripple)
  Pretend.setColor(ColorStateList(int[0].class{int{}},int{颜色}))
  id.setBackground(Pretend.setColor(ColorStateList(int[0].class{int{}},int{颜色})))
end


--配置卡片边框
----------------
function 卡片边框(控件ID,边框宽度,边框颜色,背景颜色,边框圆角)
  import "android.graphics.drawable.GradientDrawable"
  控件ID.setBackgroundDrawable(GradientDrawable()
  .setShape(GradientDrawable.RECTANGLE)
  .setStroke(边框宽度,tonumber(边框颜色))
  .setColor(tonumber(背景颜色))
  .setCornerRadius(边框圆角))
  return drawable
end

--配置弹窗圆角
-------------------------
function 弹窗圆角(控件,背景色,上角度,下角度)
  if not 上角度 then
    if (activity.width <=720)then
      上角度=18
     else
      上角度=28
    end
  end
  if not 下角度 then
    下角度=上角度
  end
  import "android.graphics.drawable.GradientDrawable"
  控件.setBackgroundDrawable(GradientDrawable()
  .setShape(GradientDrawable.RECTANGLE)
  .setColor(背景色)
  .setCornerRadii({上角度,上角度,上角度,上角度,下角度,下角度,下角度,下角度}))
end

--获取状态栏和导航栏高度
-----------------------------------------
function getStatusBarHeight()--函数
  local resources=activity.getResources();
  local resourceId=resources.getIdentifier("status_bar_height","dimen","android");
  local height=resources.getDimensionPixelSize(resourceId);
  return height;
end

--隐藏状态栏但不隐藏字体
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
--状态栏背景透明
activity.getWindow().setStatusBarColor(Color.TRANSPARENT);
--状态栏字体白
activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);


Tritium=
{
  LinearLayout;
  layout_height="fill";
  layout_width="fill";
  orientation="vertical";
  background="#FFFFFFFF";
  {
    CardView;--卡片控件
    layout_height=getStatusBarHeight();--设置卡片控件高度为状态栏高度
    backgroundColor=0xFF2196F3;--卡片颜色
    radius="0dp";--卡片圆角
    CardElevation="0dp";--卡片阴影
    layout_width="match_parent";--卡片宽度
  };
  {
    CardView;
    layout_height="wrap_content";
    backgroundColor="0xFF2196F3";
    radius="0dp";
    CardElevation="0dp";
    layout_width="match_parent";
    {
      LinearLayout;
      layout_width="match_parent";
      layout_marginTop=result;
      {
        LinearLayout;
        orientation="horizontal";
        gravity="center";
        layout_height="56dp";
        layout_width="match_parent";
        {
          LinearLayout;
          layout_height="match_parent";
          gravity="center";

          {
            CardView;
            layout_height="80dp";
            PreventCornerOverlap=false;
            layout_marginLeft="-15dp";
            CardElevation="0dp";
            background="#00000000";
            radius="40dp";
            UseCompatPadding=false;
            layout_width="80dp";
            {
              ImageView;
              layout_height="match_parent";
              layout_margin="-10dp";
              id="返回";
              background="#00000000";
              padding="38dp";
              src="https://pan.tenire.com/view.php/a1e93dfe9b48142162665102d4540262.png";
              layout_width="match_parent";
            };
          };
        };
        {
          TextView;
          gravity="center|left";
          singleLine=true;
          layout_marginLeft="-15dp";
          layout_width="match_parent";
          text="应用管理";
          id="标题";
          textSize="19dp";
          ellipsize="end";
          layout_height="match_parent";
          layout_weight="1";
          textColor="#FFFFFF";
        };
        {
          CardView;
          layout_height="65dp";
          PreventCornerOverlap=false;
          CardElevation="0dp";
          layout_marginRight="-17dp";
          background="#00000000";
          radius="33dp";
          UseCompatPadding=false;
          layout_width="65dp";
          {
            ImageView;
            layout_height="match_parent";
            layout_margin="-10dp";
            id="后退";
            ColorFilter=Color.WHITE;--设置图片着色
            background="#00000000";
            padding="28dp";
            --src="icon/ic_keyboard_arrow_left_black_24dp.png";
            layout_width="match_parent";
          };
        };
        {
          CardView;
          layout_height="65dp";
          PreventCornerOverlap=false;
          CardElevation="0dp";
          layout_marginRight="-17dp";
          background="#00000000";
          radius="33dp";
          UseCompatPadding=false;
          layout_width="65dp";
          {
            ImageView;
            layout_height="match_parent";
            layout_margin="-10dp";
            id="刷新";
            ColorFilter=Color.WHITE;--设置图片着色
            background="#00000000";
            padding="28dp";
            --src="icon/ic_refresh_black_24dp.png";
            layout_width="match_parent";
          };
        };
        {
          CardView;
          layout_height="65dp";
          PreventCornerOverlap=false;
          CardElevation="0dp";
          layout_marginRight="-30dp";
          background="#00000000";
          radius="33dp";
          UseCompatPadding=false;
          layout_width="65dp";
          {
            ImageView;
            layout_height="match_parent";
            layout_margin="-10dp";
            id="前进";
            ColorFilter=Color.WHITE;--设置图片着色
            background="#00000000";
            padding="28dp";
            --src="icon/ic_keyboard_arrow_right_black_24dp.png";
            layout_width="match_parent";
          };
        };
        {
          CardView;
          layout_height="65dp";
          PreventCornerOverlap=false;
          CardElevation="0dp";
          layout_marginRight="-5dp";
          background="#00000000";
          radius="33dp";
          UseCompatPadding=false;
          layout_width="65dp";
          {
            TextView;
            layout_height="0dp";
            id="menu";
            layout_marginLeft="-145dp";
            layout_marginTop="10dp";
            layout_width="0dp";
          };
          {
            ImageView;
            layout_height="match_parent";
            layout_margin="-10dp";
            id="菜单";
            background="#00000000";
            padding="31dp";
            --src="icon/abc_ic_menu_moreoverflow_mtrl_alpha.png";
            layout_width="match_parent";
          };
        };
      };
    };
  };
  {
    LinearLayout,--线性布局
    orientation='vertical',--方向
    layout_width='fill',--宽度
    layout_height='fill',--高度
    background='#FFFFFFFF',--背景颜色或图片路径

    {
      LinearLayout;
      layout_width="fill";
      gravity="center";
      id="加载";
      background="#ffffff";
      layout_height="fill";
      {
        ProgressBar;
      };
    };
    {
      GridView;
      layout_width="fill";
      layout_height="fill";
      fastScrollEnabled=true;
      numColumns=2;
      id="Grid";

    };
  };
};
activity.setContentView(loadlayout(Tritium))--布局视图



items=--全屏框架
{
  LinearLayout;--线性控件
  orientation='vertical';--布局方向
  layout_width='fill';--布局宽度
  layout_height='fill';--布局高度
  background='#FFFFFFFF';--布局背景
  {
    CardView;--卡片控件
    layout_width='fill';--卡片宽度
    layout_height='80dp';--卡片高度
    cardBackgroundColor=0xFFF0F0F0;--卡片颜色
    layout_margin='10dp';--卡片边距
    cardElevation='0dp';--卡片阴影
    radius='8dp';--卡片圆角
    {
      LinearLayout;--线性控件
      orientation='horizontal';--布局方向
      layout_width='fill';--布局宽度
      layout_height='fill';--布局高度
      background='#FFF0F0F0';--布局背景
      {
        CardView;--卡片控件
        layout_width='50dp';--卡片宽度
        layout_height='50dp';--卡片高度
        cardBackgroundColor='#00ffffff';--卡片颜色
        layout_margin='0dp';--卡片边距
        cardElevation='0dp';--卡片阴影
        layout_gravity='left|center';--在父控件中的对齐方式
        layout_marginLeft='10dp';--布局左距
        radius='5dp';--卡片圆角
        {
          ImageView;--图片控件
          layout_width='fill';--图片宽度
          layout_height='fill';--图片高度
          id='图标';--设置控件ID
          scaleType='fitXY';--图片拉伸
          layout_gravity='center';--重力
        };

      };

      {
        CardView;--卡片控件
        layout_width='fill';--卡片宽度
        layout_height='fill';--卡片高度
        cardBackgroundColor='#00ffffff';--卡片颜色
        layout_margin='0dp';--卡片边距
        cardElevation='0dp';--卡片阴影
        layout_marginLeft='10dp';--布局左距
        layout_marginRight='10dp';--布局右距
        radius='5dp';--卡片圆角
        {
          LinearLayout;--线性控件
          orientation='vertical';--布局方向
          layout_width='fill';--布局宽度
          layout_height='fill';--布局高度
          background='#FFF0F0F0';--布局背景
          {
            CardView;--卡片控件
            layout_width='fill';--卡片宽度
            layout_height='35dp';--卡片高度
            cardBackgroundColor='#00ffffff';--卡片颜色
            layout_margin='0dp';--卡片边距
            cardElevation='0dp';--卡片阴影
            radius='5dp';--卡片圆角
            {
              LinearLayout;--线性控件
              orientation='vertical';--布局方向
              layout_width='fill';--布局宽度
              layout_height='fill';--布局高度
              background='#00FFFFFF';--布局背景
              gravity='bottom|center';--控件内容的重力方向
              {
                TextView;--文本控件
                layout_width='fill';--控件宽度
                layout_height='wrap';--控件高度
                textSize='16sp';--文字大小
                textColor=0x8e000000;--文字颜色
                id='名称';--设置控件ID
                singleLine=true;--设置单行输入
                ellipsize='end';--多余文字用省略号显示
                Typeface=Typeface.DEFAULT;--字体
                gravity='left';--重力
              };
            };

          };
          {
            CardView;--卡片控件
            layout_width='fill';--卡片宽度
            layout_height='40dp';--卡片高度
            cardBackgroundColor='#00ffffff';--卡片颜色
            layout_margin='0dp';--卡片边距
            cardElevation='0dp';--卡片阴影
            radius='5dp';--卡片圆角
            {
              TextView;--文本控件
              layout_width='fill';--控件宽度
              layout_height='fill';--控件高度
              minLines=2;--默认占用的行数
              MaxLines=2;--设置最大输入行数
              textSize='12sp';--文字大小
              ellipsize='end';--多余文字用省略号显示
              textColor=0xff777777;--文字颜色
              id='包名';--设置控件ID
              Typeface=Typeface.DEFAULT;--字体
              gravity='left|center';--重力
            };

          };
        };

      };


    };

  };

}

adp=LuaAdapter(activity,items)
Grid.Adapter=adp

--[[
task(100,function()
  加载.setVisibility(View.GONE)
end)
--]]

local applist--数据集
function 获取数据(applist,a)
  local pm = activity.getPackageManager()
  app=applist[a]
  local 包名=app.packageName
  pkg=pm.getApplicationInfo(包名,0)
  uid=pkg.uid
  pkg1=pm.getPackageInfo(包名,0);
  local 应用名称=pkg1.applicationInfo.loadLabel(pm)
  local 图标=pkg.loadIcon(pm);

  --task(50,function()
    加载.setVisibility(View.GONE)
  --end)

  adp.add{图标=图标,名称=应用名称,包名=包名}
end

function 刷新数据()
  require "import"
  pm = activity.getPackageManager();
  applist=pm.getInstalledPackages(0);
  local a=0
  while a~=#applist do--执行循环命令
    --Thread.sleep(20)--延迟执行
    call("获取数据",applist,a)
    a=a+1
  end
end

thread(刷新数据)--运行线程,循环添加数据

function 分享文件(path)
  import "android.webkit.MimeTypeMap"
  import "android.content.Intent"
  import "android.net.Uri"
  import "java.io.File"
  local FileName=tostring(File(path).Name)
  local ExtensionName=FileName:match("%.(.+)")
  local Mime=MimeTypeMap.getSingleton().getMimeTypeFromExtension(ExtensionName)
  local intent = Intent()
  intent.setAction(Intent.ACTION_SEND)
  intent.setType(Mime)
  local file = File(path)
  local uri = Uri.fromFile(file)
  intent.putExtra(Intent.EXTRA_STREAM,uri)
  intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
  activity.startActivity(Intent.createChooser(intent, "分享到:"))
end

function getAppIcon(p)


  --获取包管理器
  local pm=activity.getPackageManager().getPackageInfo(p, 0).applicationInfo

  --提取图标drawable，和软件名
  local drawable,name=pm.loadIcon(activity.getPackageManager()),pm.loadLabel(activity.getPackageManager())
  --导入file
  import "java.io.File"

  --创建文件夹
  File("/storage/emulated/0/Download/海纳云安装包提取/").mkdirs()
  local path="/storage/emulated/0/Download/海纳云安装包提取/"..name..".png"

  --保存的路径
  local filepath =path


  --获取图片宽度
  local width = drawable.getIntrinsicWidth();
  --获取图片高度
  local height = drawable.getIntrinsicHeight();

  import "android.graphics.Bitmap"
  --图片位深，PixelFormat.OPAQUE代表没有透明度，RGB_565就是没有透明度的位深，否则就用ARGB_8888。详细见下面图片编码知识。
  local config = Bitmap.Config.ARGB_8888
  --创建一个空的Bitmap
  local bitmap = Bitmap.createBitmap(width,height,config);

  -- (在bitmap上创建一个画布
  import "android.graphics.Canvas"
  local canvas = Canvas(bitmap);
  --设置画布的范围
  drawable.setBounds(0, 0, width, height);
  --将drawable绘制在canvas上
  drawable.draw(canvas);


  --执行保存函数
  local i,e=pcall(function()
    import "java.io.FileOutputStream"
    import "java.io.File"
    import "android.graphics.Bitmap"

    --创建输出流
    local f = File(tostring(filepath))
    local out = FileOutputStream(f)

    --输出图像
    bitmap.compress(Bitmap.CompressFormat.PNG,95,out)

    --关闭输出流
    out.flush()
    out.close()


    return true
  end)

  --判断保存执行情况
  if i then
    --广播通知图库更新图片
    import "android.content.Intent"
    import "android.net.Uri"
    activity.sendBroadcast(Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE,Uri.parse("file://"..filepath)))
    print("已保存至:"..filepath)
   else
    print(e.."提取图标失败")
  end
end




Grid.onItemClick=function(adp,view,pos,id)
  pm = activity.getPackageManager();
  applist=pm.getInstalledPackages(0);
  app=tostring(applist[id-1])
  local 包名=app:match(" (.-)}")
  pkg=pm.getApplicationInfo(tostring(包名),0)
  uid=pkg.uid
  pkg1=pm.getPackageInfo(tostring(包名),0);
  local 应用名称=pkg1.applicationInfo.loadLabel(activity.getPackageManager())
  local 图标=pkg.loadIcon(pm);

  import "android.content.pm.PackageManager"
  pm = activity.getPackageManager();
  local 图标 = pm.getApplicationInfo(tostring(包名),0)
  local 图标 = 图标.loadIcon(pm);
  local pkg = activity.getPackageManager().getPackageInfo(包名, 0);
  local 应用名称 = pkg.applicationInfo.loadLabel(activity.getPackageManager())
  local 版本号 = activity.getPackageManager().getPackageInfo(包名, 0).versionName
  local 最后更新时间 = activity.getPackageManager().getPackageInfo(包名, 0).lastUpdateTime
  local cal = Calendar.getInstance();
  cal.setTimeInMillis(最后更新时间);
  local 最后更新时间 = cal.getTime().toLocaleString()
  function getLaunchClass(packname)
    import "android.R$id"
    import "android.R$menu"
    import "android.app.AlertDialog"
    import "android.R$layout"
    import "android.content.Intent"
    import "android.icu.util.Calendar"
    import "java.util.Calendar"
    import "android.widget.TextView"
    import "android.widget.LinearLayout"
    import "com.androlua.LuaAdapter"
    import "android.widget.ImageView"
    local resolveIntent = Intent(Intent.ACTION_MAIN, nil)
    resolveIntent.addCategory(Intent.CATEGORY_LAUNCHER)
    resolveIntent.setPackage(packname)
    local resolveinfoList = pm.queryIntentActivities(resolveIntent, 0)
    pcall(function ()
      resolveinfo = resolveinfoList.iterator().next()
    end)
    if resolveinfo~=nil then
      return resolveinfo.activityInfo.name
     else
      return "无启动类，该应用可能没有用户界面。"
    end
  end


  local 启动类=getLaunchClass(包名)
  local 内部版本号 = activity.getPackageManager().getPackageInfo(包名, 0).versionCode
  function openApp(pm)
    local f,e=pcall(function ()
      this.startActivity(this.getPackageManager().getLaunchIntentForPackage(pm)
      .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP))
    end)
    if e then
      print ("未安装该应用")
    end
  end

  安装包路径=pm.getApplicationInfo(包名,64).sourceDir
  应用类型=string.sub(安装包路径,0,6)
  if 应用类型:find("d")then
    应用类型="用户应用"
   elseif 应用类型:find("s")then
    应用类型="系统应用"
   else
    应用类型="未知"
  end

  local itemc={}
  table.insert(itemc,tostring(包名))
  table.insert(itemc,tostring("打开应用"))
  table.insert(itemc,tostring("卸载应用"))
  table.insert(itemc,tostring("分享应用"))
  table.insert(itemc,tostring("应用信息"))
  table.insert(itemc,tostring("提取图标"))
  table.insert(itemc,tostring("提取安装包"))
  local dialog=AlertDialog.Builder(this)
  .setTitle(应用名称)
  .setItems(itemc,
  {
    onClick=function(l,v)
      if v==1 then
        local packageName=包名
        import "android.content.Intent"
        import "android.content.pm.PackageManager"
        local manager = activity.getPackageManager()
        local open = manager.getLaunchIntentForPackage(packageName)
        this.startActivity(open)
      end
      if v==2 then
        import "android.net.Uri"
        import "android.content.Intent"
        local uri = Uri.parse("package:"..包名)
        local intent = Intent(Intent.ACTION_DELETE,uri)
        activity.startActivity(intent)
      end
      if v==3 then
        File("/storage/emulated/0/Download/海纳云安装包提取/").mkdirs()
        local path="/storage/emulated/0/Download/海纳云安装包提取/"..应用名称..".apk"
        LuaUtil.copyDir(安装包路径,path)
        分享文件(path)
      end
      if v==4 then
        local dialog=AlertDialog.Builder(this)
        .setTitle("应用信息")
        .setMessage("应用名称:"..应用名称.."\n\n包名:"..包名.."\n\n版本名:"..版本号.."\n\n最后更新时间:"..最后更新时间.."\n\n内部版本号:"..内部版本号.."\n\n启动类:"..启动类.."\n\n安装包路径:"..安装包路径.."\n\n应用类型:"..应用类型)
        .setNegativeButton("确定",nil)
        .show()
        dialog.create()
        弹窗圆角(dialog.getWindow(),0xffffffff)
        p=dialog.getWindow().getAttributes()
        if (activity.width >1080)then
          p.width=(900);
         else
          p.width=(activity.width*0.85);
        end
        dialog.getWindow().setAttributes(p);
        message=dialog.findViewById(android.R.id.message)
        message.TextIsSelectable=true
      end
      if v==5 then
        getAppIcon(包名)
      end
      if v==6 then
        File("/storage/emulated/0/Download/海纳云安装包提取/").mkdirs()
        local path="/storage/emulated/0/Download/海纳云安装包提取/"..应用名称..".apk"
        LuaUtil.copyDir(安装包路径,path)
        弹出消息("提取成功 保存目录："..path)
      end
    end
  })
  .setNegativeButton("取消",nil)
  .show()
  dialog.create()
  弹窗圆角(dialog.getWindow(),0xffffffff)
  p=dialog.getWindow().getAttributes()
  if (activity.width >1080)then
    p.width=(900);
   else
    p.width=(activity.width*0.85);
  end
  dialog.getWindow().setAttributes(p);
end;


返回.onClick=function()--返回图片点击事件
  activity.finish()--关闭当前页面
end》》
《《打印》》
《《print(打印内容)》》
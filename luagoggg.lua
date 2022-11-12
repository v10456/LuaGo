require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
function iku(公告内容)
  iku={
          LinearLayout;
              orientation="vertical";
                  gravity="center";
                      layout_height="fill";
                          layout_width="fill";
                                    {
                                                    LinearLayout;
                                                                orientation="vertical";
                                                                            gravity="center";
                                                                                        layout_height="fill";
                                                                                                    layout_width="fill";
                                                                                                                {
                                                                                                                                  CardView;
                                                                                                                                                backgroundColor="0xffe6ebef";
                                                                                                                                                              layout_height="fill";
                                                                                                                                                                            layout_margin="5dp";
                                                                                                                                                                                          layout_weight="1";
                                                                                                                                                                                                        radius="10dp";
                                                                                                                                                                                                                      layout_width="fill";
                                                                                                                                                                                                                                    Elevation="0";
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                      TextView;
                                                                                                                                                                                                                                                                                      --layout_gravity="center";--居中代码
                                                                                                                                                                                                                                                                                                      text="公告内容:"..公告内容;
                                                                                                                                                                                                                                                                                                                      layout_margin="10dp";
                                                                                                                                                                                                                                                  };
                                                                                                                };
                                                                                                                            {
                                                                                                                                              CardView;
                                                                                                                                                            layout_marginTop="5dp";
                                                                                                                                                                          layout_height="30dp";
                                                                                                                                                                                        backgroundColor="0xffe6ebef";
                                                                                                                                                                                                      layout_width="150dp";
                                                                                                                                                                                                                    radius="5dp";
                                                                                                                                                                                                                                  Elevation="0";
                                                                                                                                                                                                                                                layout_marginBottom="5dp";
                                                                                                                                                                                                                                                              onClick=function
                                                                                                                                                                                                                                                                              wjmm1.dismiss()
                                                                                                                                                                                                                                                                                            end;
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                              TextView;
                                                                                                                                                                                                                                                                                                                                              layout_gravity="center";
                                                                                                                                                                                                                                                                                                                                                              text="确 定";
                                                                                                                                                                                                                                                                                                                                                                              textColor="0xFF000000";
                                                                                                                                                                                                                                                                                                          };
                                                                                                                            };
                                    };
  };
    wjmm=AlertDialog.Builder(activity)
      .setView(loadlayout(iku))
        import "android.text.Spannable"
          import "android.text.SpannableString"
            import "android.text.style.ForegroundColorSpan"
              wjmm1=wjmm.show()
                wjmm1.setCanceledOnTouchOutside(false)
                  wjmm1.setCancelable(false)
                    import "android.graphics.drawable.GradientDrawable"
                      function 弹窗圆角(A0_88, A1_89, A2_90, A3_91) local L4_92 A2_90 = A2_90 or 40 A3_91 = A3_91 or A2_90 L4_92 = A0_88.setBackgroundDrawable L4_92(GradientDrawable().setShape(GradientDrawable.RECTANGLE).setColor(A1_89).setCornerRadii({ A2_90, A2_90, A2_90, A2_90, A3_91, A3_91, A3_91, A3_91 }))end
                        弹窗圆角(wjmm1.getWindow(),0x00000000,20,20)
                        end
                        iku([[luagox+pro是基于Androlua+开发的支持Google Material与AndroidX AppCompat控件及类库，颜色选择器ColorPicker，Google推荐的Glide图片加载框架，AgentWeb一个高度封装的WebView支持库(AndroLua+永远滴神，二改参考的话，请勿去除AndroLua+作者nirenr的名字)
                        
                        AndroLua+是由nirenr开发的在安卓使用Lua语言开发应用的工具，该项目基于开源项目luajava和AndroLua优化加强，修复了原版的bug，并加入了很多新的特性，使开发更加简单高效，使用该软件完全免费，如果你喜欢这个项目欢迎捐赠或者宣传他。 在使用之前建议详细阅读程序自带帮助文档。 用户协议 作者不对使用该软件产生的任何直接或间接损失负责。 勿使用该程序编写恶意程序以损害他人。 继续使用表示你已知晓并同意该协议。]])
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                                                                    
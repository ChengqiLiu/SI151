train=1;val=2;test=3;

RF(train)=0.464170467257551;
RF(val)=0.4086194975800876;
RF(test)=0.4113274948144734;

LR(train)=0.46324541777816025;
LR(val)=0.41144272873934085;
LR(test)=0.41311362064991936;

AdB(train)=0.4648481197831512;
AdB(val)=0.4026849504494123;
AdB(test)=0.4062572021203042;

GdB(train)=0.5449186816969279;
GdB(val)=0.41651302143351004;
GdB(test)=0.4250979488361374;

Bag(train)=0.4632669305567507;
Bag(val)=0.4102327725282323;
Bag(test)=0.4129407697626181;

s_RF(train)=0.4755399707426211;
s_RF(val)=0.4223899516017516;
s_RF(test)=0.42452177921179995;

s_LR(train)=0.46529988813355133;
s_LR(val)=0.4132288545747868;
s_LR(test)=0.4160520857340401;

s_AdB(train)=0.46931202134067634;
s_AdB(val)=0.4127679188753169;
s_AdB(test)=0.4108089421525697;

s_GdB(train)=0.546478358144738;
s_GdB(val)=0.427402627333487;
s_GdB(test)=0.4326457709149574;

s_Bag(train)=0.46522459340848465;
s_Bag(val)=0.4133440884996543;
s_Bag(test)=0.415187831297534;

Regnet(train)=76.19288357284226/100;
Regnet(val)=60.99331643235769/100;
Regnet(test)=62.58354459552892/100;


Y=[RF(train)  RF(val) RF(test)
LR(train) LR(val)    LR(test)
AdB(train) AdB(val)    AdB(test)
GdB(train)    GdB(val)    GdB(test)
Bag(train) Bag(val) Bag(test)
Regnet(train) Regnet(val) Regnet(test)];
figure
X=1:6;
h=bar(X,Y);
% 设置条形图颜色
set(h(1),'FaceColor',[1,1,0])
set(h(2),'FaceColor',[0,0.9,0.3])
set(h(3),'FaceColor',[1,0,0.3])
ylim([0,1]);
ylabel('Accuracy (%)');
xlabel('Methods');
title('Accuracy Comparison of Various Methods');
legend('training set','validation set','test set', 'FontSize',8,'FontName','Times New Roman', 'Location', 'northwest'); %修改图例
set(gca,'xtick',1:6);
set(gca,'XTickLabel',{'RandomForest','LR','AdaBoost','GradientBoost','Bagging','Resnet'},'FontSize',8,'FontName','Times New Roman'); %修改横坐标名称、字体
Y_1=roundn(Y,-2);
for i = 1:length(X)
    text(X(i)-0.25,Y_1(i,1),num2str(Y_1(i,1)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
    text(X(i),Y_1(i,2),num2str(Y_1(i,2)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
    text(X(i)+0.25,Y_1(i,3),num2str(Y_1(i,3)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
end

clc
Y=[RF(test) s_RF(test)
LR(test) s_LR(test)
AdB(test) s_AdB(test)
GdB(test) s_GdB(test)
Bag(test)  s_Bag(test)];
figure
X=1:5;
h=bar(X,Y);
% 设置条形图颜色
set(h(1),'FaceColor',[1,1,0])
set(h(2),'FaceColor',[0,0.9,0.3])
ylim([0,1]);
ylabel('Test Set Accuracy (%)');
xlabel('Methods');
title('Accuracy on Test Set');
legend('without standardization','with standardization', 'FontSize',8,'FontName','Times New Roman', 'Location', 'northwest'); %修改图例
set(gca,'xtick',1:6);
set(gca,'XTickLabel',{'RandomForest','LR','AdaBoost','GradientBoost','Bagging'},'FontSize',8,'FontName','Times New Roman'); %修改横坐标名称、字体
Y_1=roundn(Y,-2);
for i = 1:length(X)
    text(X(i)-0.15,Y_1(i,1),num2str(Y_1(i,1)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
    text(X(i)+0.15,Y_1(i,2),num2str(Y_1(i,2)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
end

clc
Y=[RF(val) s_RF(val)
LR(val) s_LR(val)
AdB(val) s_AdB(val)
GdB(val) s_GdB(val)
Bag(val)  s_Bag(val)];
figure
X=1:5;
h=bar(X,Y);
% 设置条形图颜色
set(h(1),'FaceColor',[1,1,0])
set(h(2),'FaceColor',[0,0.9,0.3])
ylim([0,1]);
ylabel('Validation Set Accuracy (%)');
xlabel('Methods');
title('Accuracy on Validation Set');
legend('without standardization','with standardization', 'FontSize',8,'FontName','Times New Roman', 'Location', 'northwest'); %修改图例
set(gca,'xtick',1:6);
set(gca,'XTickLabel',{'RandomForest','LR','AdaBoost','GradientBoost','Bagging'},'FontSize',8,'FontName','Times New Roman'); %修改横坐标名称、字体
Y_1=roundn(Y,-2);
for i = 1:length(X)
    text(X(i)-0.15,Y_1(i,1),num2str(Y_1(i,1)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
    text(X(i)+0.15,Y_1(i,2),num2str(Y_1(i,2)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
end

clc
Y=[RF(train) s_RF(train)
LR(train) s_LR(train)
AdB(train) s_AdB(train)
GdB(train) s_GdB(train)
Bag(train)  s_Bag(train)];
figure
X=1:5;
h=bar(X,Y);
% 设置条形图颜色
set(h(1),'FaceColor',[1,1,0])
set(h(2),'FaceColor',[0,0.9,0.3])
ylim([0,1]);
ylabel('Training Set Accuracy (%)');
xlabel('Methods');
title('Accuracy on Validation Set');
legend('without standardization','with standardization', 'FontSize',8,'FontName','Times New Roman', 'Location', 'northwest'); %修改图例
set(gca,'xtick',1:6);
set(gca,'XTickLabel',{'RandomForest','LR','AdaBoost','GradientBoost','Bagging'},'FontSize',8,'FontName','Times New Roman'); %修改横坐标名称、字体
Y_1=roundn(Y,-2);
for i = 1:length(X)
    text(X(i)-0.15,Y_1(i,1),num2str(Y_1(i,1)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
    text(X(i)+0.15,Y_1(i,2),num2str(Y_1(i,2)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
end
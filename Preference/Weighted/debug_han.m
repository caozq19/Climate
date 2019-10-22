% a_dic = load("HJB_NonLinPref_Cumu_Sims.mat")
% a = a_dic.j_hists2
% plot(a)
% hold on
% b_dic = load("HJB_NonLinPref_Cumu_old_Sims.mat")
% b = b_dic.j_hists2
% plot(b)
% hold off
% hold on

% figure()
% c_dic = load("HJB_NonLinPref_Cumu_Sims.mat")
% c = c_dic.v_dr_hists2
% plot(c)
% hold on
% d_dic = load("HJB_NonLinPref_Cumu_old_Sims.mat")
% d = d_dic.v_dr_hists2
% plot(d)
% hold off
% a_dic = load("HJB_NonLinPref_Cumu_Sims.mat")
% hists2 = a_dic.hists2
% plot(hists2(:,1))
% hold on
% b_dic = load("HJB_NonLinPref_Cumu_old_Sims.mat")
% hists2 = b_dic.hists2
% plot(hists2(:,1))
% hold off
% hold on

figure()
c_dic = load("HJB_NonLinPref_Cumu.mat")
plot(c_dic.v0_dr(20,:,18))

hold on
d_dic = load("HJB_NonLinPref_Cumu_old.mat")
plot(d_dic.v0_dr(20,:,18))

legend('new','old')

hold off

a_result = load("HJB_NonLinPref_Cumu.mat")
b_result = load("HJB_NonLinPref_Cumu_old.mat")

max(abs(a_result.j - b_result.j),[],"all")
min(abs(a_result.j),[],"all")

max(abs(a_result.v0_dk-b_result.v0_dk),[],"all")
min(a_result.v0_dk,[],"all")

max(abs(a_result.v0_dr-b_result.v0_dr),[],"all")
min(a_result.v0_dr,[],"all")


% max(abs(a_result.v0 - b_result.v0),[],'all')
% sum(abs(a_result.v0 - b_result.v0),'all')

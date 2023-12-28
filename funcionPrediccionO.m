function [y1] = funcionPrediccionO(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 17-Jul-2023 16:01:49.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx53 matrix, input #1
% and returns:
%   y = Qx4 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [500;9;12;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1.gain = [4.49438202247191e-05;0.181818181818182;0.0555555555555556;0.5;0.5;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2];
x1_step1.ymin = -1;

% Layer 1
b1 = [-1.4146119530016456611;-1.1050191061317975461;0.81543914854834631534;0.35245019702958463315;-0.095203196556783872828;-0.25984575328059811294;0.56574464891515763298;0.66284058146267532674;1.0978881531723772014;-1.4682563142296252146];
IW1_1 = [1.0471979778237667791 -0.38573359408054702646 0.1337533176754480968 0.19923591413791963411 -0.98513915124293338632 0.11694356056523416698 0.13680076805239999027 0.12313934852538942211 0.2730273213873215532 0.26251444720931871313 -0.38019822480186671321 -0.15035997154286764865 0.25531728933909247914 -0.030742758342675098604 0.1069267713582139484 0.09419883048491946298 0.071260189284602315496 0.39102293042237840082 -0.1355874125153631593 0.02369034378140836769 0.10434022938696002614 -0.086055794470731736268 0.011375962750854617944 -0.22792574692855835372 -0.11087984310469753413 0.019774323011646270654 0.0065401018417918128922 0.20544677348149847917 0.032940054413252699284 -0.23228897885406926682 0.11592225565773539575 -0.50356194550679078681 -0.42954490216177571016 0.039052603765197715924 0.23135206332412502905 -0.0011457938609664552326 0.24613416822478093038 0.21305447146761438693 -0.2328752559764855623 -0.51012696914139821214 0.10187908196844254471 -0.10218858005098348241 0.37509602285950305323 -0.12836384303231962445 -0.15713004994071724796 -0.21465284334559259216 -0.040271999382896293829 -0.24874572605947839476 0.035984250785260796235 0.31106407912631939272 -0.043593594197021814929 0.011071513500744586261 -0.087086395007095029897;0.73339891616299002219 -0.39876492154394854728 0.065332011272459716844 0.0069540646555725253372 -0.058083968959836078383 -0.014012627419784337221 -0.01668620324897986118 0.20976306992488186198 0.34221046758228856888 0.28366932557349117117 -0.088139806588427044298 -0.10160456653973463925 -0.31486508356065828762 -0.24732604843021155361 0.38799204941090981169 -0.13252153874059141581 -0.12458738208038729056 0.10224805539433105828 -0.53262451177904945876 -0.13434279038990823429 0.11916085629780526212 0.029329162937369680775 0.18184685452495899516 -0.15896552721011913967 -0.060658541794042779294 -0.21246099375461602321 -0.46382125146700370344 0.42850281088156144671 0.10275210775920082251 0.26194486477014428116 0.022898533168859532688 -0.088089939324233312856 0.2025717864383289879 0.18487756793981005576 -0.38710480428042715051 -0.24268763639041329716 -0.42832588779799130041 -0.12116169704607263058 -0.32943268037374456858 0.10031942519508334211 0.11615371309670993738 -0.089827657150452183688 -0.21183335331256683554 -0.14374916468443924011 -0.1027850480468044253 0.00015316581284043713149 -0.30638470906542480954 0.09490985191812748023 0.38642339333448794125 -0.079793732229116315358 0.14520536898104374757 0.13658759484001559148 0.0009946247681627174049;0.10796044613520623667 1.8777002992554725491 -0.2488236777106456743 -0.0038833761155286734487 -0.1757084674731578533 -0.19632948150082291106 0.25152216052377218691 0.021673684123235021498 0.032773711504736548206 0.32030302425198969862 0.22865243360047232679 0.43965430788107784377 0.15511556523341796243 -0.38236199464363135325 0.13095287423625023848 -0.096779876711545489987 -0.15499033937937375938 -0.060587760513127628115 -0.11934921772852762067 -0.0011387332626743591063 0.25364200822838467442 0.018457455043556558749 -0.013223223036011396217 0.32054849845579419521 -0.021919626496300026464 -0.21163615748307762487 -0.20112273815178588476 -0.23187227777487282032 0.1131527278375811657 0.093545303181957972782 -0.3065374033272710852 -0.38229326541764885317 0.0006064552934690378011 0.072274165264652259766 0.23037405720016190802 0.056607325390586653302 0.24225371974561418775 0.078826440065004041435 0.083727862985016207609 -0.21105021530679266006 0.063757988726387743172 -0.16461144155594439886 0.09907847783259179919 0.14848109693301206335 0.096930674352909057534 -0.1743499554175749755 -0.11739615387501241284 -0.095434001275741711656 -0.27124632794304104344 0.20567099688253376311 -0.061278276938128178886 0.13536182232743462772 0.29349313952674926931;-1.5748872309719166296 -2.7157005428746421316 0.14973952784735150567 -0.026402410300085672745 -0.11782160518470592703 -0.061687041672537405723 0.072933724322677501162 0.071503224931823650135 0.0053809625513238003996 0.055529782717435194339 0.1041725503495653099 0.25756291982322349066 0.19258768234984222079 0.1143147642114357293 0.01942383986292699205 0.11447918805806432674 0.012416010388584386784 -0.093839303915722704907 0.16136005156954930095 0.053035222121426098263 0.22656276152219964604 0.077208071734309838274 -0.03302897039990525252 0.22576502675369947148 0.18924137530459261836 0.012102464050963910452 -0.58880732553459846912 0.18644393284807425637 0.21526437957226829401 0.075665719414447732416 0.34803971466484423525 0.093888935951084689924 0.11491968257511836482 0.0030310462948773281983 0.14589676526329384276 0.19240997958860120431 0.17680276469375505455 0.21175796396739854366 0.20706751094200734342 -0.27602212391342778597 0.25135032742515989179 0.15244708620492211648 0.2574242379990734908 0.26881205518009892996 0.27145939471913693719 0.086567138726141232286 0.35798782876063728331 0.10198194876700410194 -0.12563479822549486475 0.0891191289329206493 0.093828803366635404881 0.19066787905375076617 0.28612427163217879489;0.40965279582345343057 0.7803649887604134916 0.667316071025852664 -0.1176272616028232465 -1.0008337133766025406 0.46601468420279112959 -0.1681254989964179325 -0.0028296116569340055633 -0.012584420075787193169 0.25860175368644666705 0.1400976398053779548 -0.49227934462042183261 0.12832884441675868059 -0.027287820697674023546 -0.100654633834022747 0.11270033184143223026 -0.12070138192689595924 0.25571756502635428765 -0.097409382418971804385 -0.23437508575107585118 -0.07009468547930175486 -0.023645213988980513797 0.43211803856574437788 -0.2009663340016859534 -0.027643456444374710917 -0.29327893289833939505 0.033020466985843724417 -0.32545658709758606975 0.25418710238368275034 0.20654403225200865246 0.22148828631141070922 -0.36068406802660207822 0.17041453946732221247 -0.04246069777303355941 -0.42539953717964396063 0.096706466578008992707 -0.12190069860299267146 -0.15414973428568098934 -0.1426836100427831544 -0.13310704321053623556 0.25796513802245402136 0.28759059691815663795 -0.51586133385293031495 -0.20776082280627719556 -0.19586515410958860173 -0.25926876753714972468 0.082805205507402598886 0.20415905627850980397 -0.06727239276985258476 -0.17014184631220474753 0.28675496297901797993 0.33531287406948573349 0.30892410155007998807;-2.5491654383318453903 -0.80257020226867625823 0.24735027720553084962 -0.0085008027238033922329 0.2254775265872996648 0.18243240659128368009 -0.011767983576107718044 -0.027240654525035663813 0.074396614043214556733 0.095069108261425186446 0.022800676154601885737 -0.21804824647594417408 -0.021546720629812235459 -0.12293044505088089602 0.14698530694712275135 0.0067012523336010465166 0.065786072061229883268 0.37172645614363364341 0.1664882745936271391 0.076182052361758345604 0.11204822142488662928 0.19232130297452390555 0.050148094281881175349 0.18394690406268027205 -0.014997741982053620913 -0.05813572709101039182 0.019621081772419102923 -0.23230732624129576958 0.045112070967199546789 -0.10937705046679531418 0.23342024740657768556 -0.27228966379882901805 0.27770199571491288593 0.063861787674037551188 -0.093951081744745978952 0.025510535621690626912 0.028757007050570295575 0.40325740881857990994 -0.052449198677162606197 -0.076021596084283368788 0.096491441891878956816 0.20651722001036770804 -0.063026964170500715534 0.0074925213555164585366 -0.095346118964685311337 -0.11695625145797564071 0.038037760010306960468 -0.12128254686412187624 -0.086841215076528838201 -0.037508365363767268152 -0.1103118814942560949 0.19024077137094347334 0.21849885341308822317;0.15816222830192810944 -0.38480979173155122064 0.23530674811261681478 0.35257851632465542213 -0.20271977949550709641 0.22982161497199093958 0.28370856112700848506 -0.14359492820553534931 0.03139716627896890766 -0.059204279820794729339 -0.098596503483006220359 -0.45211493812220188149 -0.035162442218899837842 -0.084295300683303306388 0.028818480364538490157 0.029425815311129928376 0.10951257504475674087 0.094486308329282675533 -0.41364566162643617853 -0.22553599343254912557 -0.040706314250115852027 -0.39998617385140183833 -0.13910209890329125471 0.014057260182289088579 0.065986857696416670316 -0.012288444717295815556 -0.24617875507851924577 -0.12895397786155132769 0.06870289185643362051 -0.16949979706326764872 -0.40450097833431225558 -0.012194414556929928165 -0.15885706014657527407 0.11173157325648046256 -0.33135955436308367483 -0.11654253010067887331 0.021069538357012213697 -0.2739843826608727162 -0.13207087881687101794 -0.10803157919451802926 0.29196801687689438731 -0.26040629976458268269 -0.033385002027700130811 -0.23584716963644056231 -0.30172473687674006282 -0.16627128615767455821 -0.072449758358028415461 0.10906781042029480011 -0.27277154988722074336 0.1140477511104113495 0.24311526242595019043 -0.10673930818462890047 0.057397911605736810781;0.13497784659218239889 -0.59396518699797196117 0.10473875081496038242 -0.16728533474829287986 0.14469172793900039742 0.054674716884924964844 0.053078144334520592496 0.34409295488558405696 -0.25451214863909527031 -0.22484164817132845648 0.2791235695090825697 0.10179029599226285807 0.33669236794571039129 0.34176424445512887385 0.40362695813772020426 0.35543570821139974791 0.18075106192762210866 -0.1683760918694263975 0.36013480605461628548 -0.2808636138187257103 0.06086515042598007047 0.27438868524225995538 -0.20041994787780006981 0.095179723470860802537 -0.38451809398530717443 -0.038240765925148724469 -0.45648308009820331987 -0.062728194035832712805 0.12300218357900599697 0.085405386798301008433 -0.041480150054003545046 -0.04817043628395849264 -0.19809835514152177027 0.44231053893075733541 0.30462008680217722567 0.1855649716090305712 0.089279757937214015984 -0.10182192805598147545 -0.36252895487990455248 0.10576797258834172433 0.5450227813965348167 0.20484967676313009521 -0.20248005252193840287 0.28972604715362715311 0.2545986286886172123 0.44505969820830143524 0.4347062322033747872 0.39175797332187539679 -0.068997907681122169765 0.28745689482653147273 0.10545108277475043201 0.45257893343816313347 0.164126988364556331;0.18255502209793170176 0.62824563910777564413 0.12130465689966712928 0.024624718655046468757 1.2125270290112040161 -0.22621756696819109167 0.026264881635194387011 0.14211296386904617717 0.012067500261423211305 0.18030811681268152369 0.30345528587871445358 0.12095304506848787718 0.23647963371167135538 -0.31827891293614801738 -0.013405510383803036917 -0.25370859407431345378 -0.035724142691007779171 0.029944799315858351002 -0.20516303417712741797 -0.17295083652034454191 0.27177918071284812296 -0.075834475524817229752 0.080735497277816828388 0.36898313244669783684 -0.012979463960374281947 0.054823134134374409965 -0.18491050843359196909 -0.20855085008505161448 0.39228760047140243117 0.32495503314085949498 -0.022555566334893265013 -0.29991570107521881017 -0.19805320853643273993 0.093331225462624470279 0.045323045699883345028 0.088066232251419879207 0.23423818654942851758 -0.3774488723403272572 0.11581618521543725342 -0.099752453635838081447 0.083194792719103571876 -0.042219803371321154573 0.13615373840791147875 0.19946862808165655157 -0.029007951302281526768 0.330113962315524756 0.51481585778387439767 0.32766540369883878636 0.47466587052670261571 -0.28544670660313314903 0.20706388562834815437 0.065135212373719039713 -0.43995738875989370831;-0.68433640401372974882 -0.11557913382156542736 0.11708827990653963846 -0.1266898934823119105 0.73489376060912836586 -0.24008922661955034439 -0.0038836328284156665033 0.018439578600570522005 0.17225957700464547551 -0.11837879054420999414 0.34482234748899281973 -0.1386540268206838955 0.11385564077598192556 0.027737601103334522112 0.092565751349836994377 0.072836971282284015961 -0.077073770550523432177 -0.12938169164195639782 -0.1381796003467347933 0.0680487758860607167 -0.18257277302420663045 0.15809176251856094098 -0.10071377140459422672 -0.17793989271434754174 -0.37511539038625268949 -0.17634279299606892 -0.26254815282626620121 0.11319070898458410968 0.080848763355982566914 0.084543575060422537781 -0.29522611084243732815 -0.26298645763688988097 0.0036051046067403563419 0.079237991123698753304 -0.14512936165458933946 0.36429043436677122081 0.41731819643825479593 0.068786772612187088716 -0.12238283431664087608 0.10422655943587894045 0.064098709252466384845 -0.092373116188908976909 0.51322441474005320305 -0.083412990512420293054 0.121175930871236473 -0.23714577410352769005 -0.12612300505659179706 0.0030460107774037802758 -0.32161918176291776073 -0.24007129808138991112 -0.24817572820548602919 -0.44313124461386599329 -0.027927536762294084827];

% Layer 2
b2 = [1.1400921389258769079;0.74631390767426597499;-0.35236516133292228314;0.0099144294610963058789];
LW2_1 = [-0.26047708564298122091 -0.22472785970498301844 -0.84989706924443908509 -0.58365313654482964267 -0.92624608352915116516 1.0344956442685369069 1.4460825273692838877 -0.73890484450986759768 0.47034741254042433667 0.35333167083455796487;-0.53372924524805254176 -0.2849699454443728186 0.93467678321851976886 -1.2968825122802063454 0.030005287090705559661 0.084243431430810131189 -0.35797713517403489947 0.3560763872518682982 1.3981983583276953453 0.77412064306017425164;-0.10540362825555384119 0.61313963213346089898 -1.2195311786064502169 2.0483350698298106174 -1.7919441250988503711 0.5430953086672647423 0.37749701717752764951 1.0463458093814594907 0.23287556216265964393 0.5630521942727524376;1.5330366066880103393 0.35178383152147540969 0.011910250281838608705 -1.2531978813563278141 0.6860189147114829078 -1.7925532363879399522 0.20678404575564751644 0.34368172381132228166 -1.1494432795545761472 -0.5341855790027848494];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,1); % samples

% Input 1
x1 = x1';
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = softmax_apply(repmat(b2,1,Q) + LW2_1*a1);

% Output 1
y1 = a2;
y1 = y1';
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Competitive Soft Transfer Function
function a = softmax_apply(n,~)
if isa(n,'gpuArray')
    a = iSoftmaxApplyGPU(n);
else
    a = iSoftmaxApplyCPU(n);
end
end
function a = iSoftmaxApplyCPU(n)
nmax = max(n,[],1);
n = bsxfun(@minus,n,nmax);
numerator = exp(n);
denominator = sum(numerator,1);
denominator(denominator == 0) = 1;
a = bsxfun(@rdivide,numerator,denominator);
end
function a = iSoftmaxApplyGPU(n)
nmax = max(n,[],1);
numerator = arrayfun(@iSoftmaxApplyGPUHelper1,n,nmax);
denominator = sum(numerator,1);
a = arrayfun(@iSoftmaxApplyGPUHelper2,numerator,denominator);
end
function numerator = iSoftmaxApplyGPUHelper1(n,nmax)
numerator = exp(n - nmax);
end
function a = iSoftmaxApplyGPUHelper2(numerator,denominator)
if (denominator == 0)
    a = numerator;
else
    a = numerator ./ denominator;
end
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

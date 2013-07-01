{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}



{Load required atoms}

int011;
int035([Sink], pDir([Atoms\Sink.atm]));
int035([Queue], pDir([Atoms\Queue.atm]));
int035([Source], pDir([Atoms\Source.atm]));
int035([MultiService], pDir([Atoms\MultiService.atm]));
int035([Empirical Distribution], pDir([Atoms\Empirical Distribution.atm]));
int012;


{Atom: enrutar}

sets;
AtomByName([Empirical Distribution], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Empirical Distribution'. Inheriting from BaseClass.]));
CreateAtom(a, s, [], 1, false);
Set(OnInit, [lateinit([att(6)])]);
int023([enrutar], 8421504, 224);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\tedatom.bmp]), [ed]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\EmpiricalDistribution.ico]));
int001(149);
SetLoc(-9, 32, 0);
SetSize(9, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [enrutar]);
SetAtt(2, 5);
SetAtt(3, 85.4904151263427);
SetAtt(4, 1);
SetAtt(5, 4);
SetExprAtt(6, [registerfunction(textatt(1,c),[Stochastic],0,0,  concat(   [do(    vtp(],string(ptv(c)),[),    setatt(3,random(100)),    setatt(4,0),    repeat(nrows,     if(=(att(4),0),      if(<(att(3),cell(count,1)),       do(setatt(4,1),if(att(8),settextatt(5,cell(count,2,2)),setatt(5,cell(count,2))))      )     )    ),    att(5)   )]  ),  [Returns a random sample from the empirical distribution table],textatt(1,c),true)]);
SetTextAtt(7, [enrutar]);
SetAtt(8, 0);
int024;
SetTable(5, 2);
int015(0, 0, [ 
1
2
3
4
5
]);
int015(1, 0, [`Cumulative%`
37
64
85
91
100
]);
int015(2, 0, [`Value`
1
2
3
4
5
]);
SetStatus(0);
int018;


{Atom: Cola_llamadas_nuevas}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_llamadas_nuevas], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>t_rr:1.]);
SetChannels(1, 5);
SetChannelRanges(1, 255, 1, 255);
int001(150);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
int013(4, 0, true, false, 0, 0, [], []);
int013(5, 0, true, false, 0, 0, [], []);
SetLoc(-9, 20, 0);
SetSize(7, 6, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~enrutar~.}enrutar]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [SetLabel([prioridad], 1, i)]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 7);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_operadora_Sanidad}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_operadora_Sanidad], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>t-fqp:prioridad.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(151);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(5, -4, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.t-findqueuepos([~1],1)|5. Sort by Label Descending: The atoms with the highest value of the label named ~prioridad~ are put in front.}t-findqueuepos([prioridad],1)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_operadora_Seguridad}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_operadora_Seguridad], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>t-fqp:prioridad.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(152);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(5, 9, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.t-findqueuepos([~1],1)|5. Sort by Label Descending: The atoms with the highest value of the label named ~prioridad~ are put in front.}t-findqueuepos([prioridad],1)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_operadora_Tráfico}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_operadora_Tráfico], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>t-fqp:prioridad.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(153);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(5, 21, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.t-findqueuepos([~1],1)|5. Sort by Label Descending: The atoms with the highest value of the label named ~prioridad~ are put in front.}t-findqueuepos([prioridad],1)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_operadora_Extinción}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_operadora_Extinción], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>t-fqp:prioridad.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(154);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(5, 32, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.t-findqueuepos([~1],1)|5. Sort by Label Descending: The atoms with the highest value of the label named ~prioridad~ are put in front.}t-findqueuepos([prioridad],1)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_operadora_Otros}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_operadora_Otros], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>t-fqp:prioridad.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(155);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(6, 42, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.t-findqueuepos([~1],1)|5. Sort by Label Descending: The atoms with the highest value of the label named ~prioridad~ are put in front.}t-findqueuepos([prioridad],1)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Operadoras_Sanidad}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Operadoras_Sanidad], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(156);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(11, -4, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 13);
SetExprAtt(2, [if(label([prioridad],First(c))=1,negexp(46), Uniform(20,-15,15))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~Label([prioridad], first(c))~.}Label([prioridad], first(c))]);
SetExprAtt(6, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Operadora_Seguridad}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Operadora_Seguridad], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(157);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(11, 8, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 5);
SetExprAtt(2, [if(label([prioridad],First(c))=1,negexp(35), Uniform(20,-15,15))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Operadoras_Tráfico}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Operadoras_Tráfico], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(158);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(10, 21, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 3);
SetExprAtt(2, [if(label([prioridad],First(c))=1,negexp(25), Uniform(20,-15,15))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Operadoras_Extinción}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Operadoras_Extinción], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(159);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(10, 32, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 1);
SetExprAtt(2, [if(label([prioridad],First(c))=1,negexp(21), Uniform(20,-15,15))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Operadoras_Otros}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Operadoras_Otros], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(160);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(11, 42, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 1);
SetExprAtt(2, [if(label([prioridad],First(c))=1,negexp(16), Uniform(20,-15,15))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Fin_llamada}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Fin_llamada], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\sink.bmp]), [sink]));
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\sink.wrl]), [sink.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Sink.ico]));
SetChannels(10, 0);
SetChannelRanges(1, 255, 0, 0);
int001(161);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
int013(5, 0, true, true, 0, 0, [], []);
int013(6, 0, true, true, 0, 0, [], []);
int013(7, 0, true, true, 0, 0, [], []);
int013(8, 0, true, true, 0, 0, [], []);
int013(9, 0, true, true, 0, 0, [], []);
int013(10, 0, true, true, 0, 0, [], []);
SetLoc(25, 22, 0);
SetSize(10, 5, 5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetAtt(2, 3);
int024;
SetStatus(1);
int018;


{Atom: Cola_Intervención_Sanidad}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_Intervención_Sanidad], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(162);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(31, -3, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_Intervención_Seguridad}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_Intervención_Seguridad], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(163);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(31, 6, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_Intervención_Tráfico}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_Intervención_Tráfico], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(164);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(32, 18, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_Intervención_Extinción}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_Intervención_Extinción], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(165);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(32, 33, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Cola_Intervención_Otros}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Cola_Intervención_Otros], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(166);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(32, 43, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Servicios_Intervención_Sanidad}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Servicios_Intervención_Sanidad], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(167);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(37, -4, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 10000);
SetExprAtt(2, [negexp(10*60)]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~1~.}1]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [SetLabel([prioridad], 2, i)]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Servicios_Intervención_Seguridad}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Servicios_Intervención_Seguridad], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(168);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(37, 6, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 10000);
SetExprAtt(2, [negexp(13*60)]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~1~.}1]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [SetLabel([prioridad], 2, i)]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Servicios_Intervención_Tráfico}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Servicios_Intervención_Tráfico], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(169);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(37, 18, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 10000);
SetExprAtt(2, [negexp(15*60)]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~1~.}1]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [SetLabel([prioridad], 2, i)]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Servicios_Intervención_Extinción}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Servicios_Intervención_Extinción], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(170);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(37, 33, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 10000);
SetExprAtt(2, [negexp(7*60)]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~1~.}1]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [SetLabel([prioridad], 2, i)]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Servicios_Intervención_Otros}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Servicios_Intervención_Otros], 0, 232);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(171);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(37, 43, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 10000);
SetExprAtt(2, [negexp(18*60)]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~1~.}1]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [SetLabel([prioridad], 2, i)]);
SetAtt(9, 0);
SetAtt(10, 1);
int024;
SetStatus(1);
int018;


{Atom: Nuevas_llamadas}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Nuevas_llamadas], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(172);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-15, 17, 0);
SetSize(5, 2, 5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetExprAtt(2, [NegExp(1/0.2083)]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [10]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 3);
int024;
SetStatus(2);
int018;


{Atom: Product}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Product], 12615680, 8273);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\product.bmp]), [product]));
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(pDir([Media\3DModels\crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(Info, [A general product.General-----------Put a product in your model and connect it's central channel with the input channel of a source to generate multiple instances of the product during running.Notes:---------For cylinder shaped, horizontally oriented 3D icons set ySize equal to zSize.For cylinder shaped, vertically oriented 3D icons set xSize equal to ySize.For sphere set xSize equal to ySize and zSize.Last revision:------------------September 27, 2003]);
Set(DdbRec, [>t-nodestroy:1.]);
int001(173);
SetLoc(-18, 17, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
CreateAttributes(2);
SetAttributeName(r(1), [Icon3D]);
SetAttributeName(r(2), [Hide2DIcon]);
SetAtt(r(1), 11);
SetAtt(r(2), 1);
int024;
Set(OnCreation, [{ In the OnInit event handler some edit fields are registered. }{ This is ok for the product in the library tree, but not for the  }{ products in the model, so erase the OnInit expression.       }Set(OnInit, [])]);
Set(OnReset, [If( Label( [t-nodestroy] , c) = 0, DestroyAtom)]);
Set(OnUser, [Do(  { Delete any current instances of this form.}   GuiDestroy([Product]),  { Register the GUI-form for this atom.}  GuiRegister(PDir([\Atoms\Product.gui]), 1),  { Show the GUI-form.}   GuiCreate([Product], [Product], 0, c, 0, 1)   )]);
Set(On2DDraw, [diBmp(0, 0, Hide2DIcon * Icon(c), 1, 5)]);
Set(On3DDraw, [Case( Icon3D,  {** Cube  **}  di3DBox(0, 0, 0, xSize, ySize, zSize, Color),  {**  Picture Cube **}  di3DBox(0, 0, 0, xSize, ySize, zSize, Color, 0, 0, Icon, 0, 100, 100),  {** Cylinder Horizontal **}  Do(   c.CenterPoint := Max(ySize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, xSize, 360, c.CenterPoint, 0, 0, 0, Color)  ),  {** Cylinder Vertical **}  Do(   c.CenterPoint := Max(xSize / 2, ySize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color)  ),  {** Ball **}  Do(   c.CenterPoint := Max(xSize / 2, Max(ySize / 2, zSize / 2)),   Ball( c.CenterPoint, c.CenterPoint, c.CenterPoint, c.CenterPoint, 180, 360, 0, 0, 0, Color)  ),  {** Cone **}  Do(   c.CenterPoint := Max(xSize, ySize),   Cone(c.CenterPoint / 2, c.CenterPoint / 2, 0, zSize, c.CenterPoint / 2, 0, 0, 90, 0, Color)  ),  {** Barrel Horizontal **}  Do(   c.CenterPoint := Max(ySize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, xSize, 360, c.CenterPoint, 0, 0, 0, Color),   Cone(0, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color),   Cone(xSize, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color)  ),  {** Barrel Vertical **}  Do(   c.CenterPoint := Max(xSize / 2, ySize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, zSize, 0, c.CenterPoint, 0, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, 0, 0, c.CenterPoint, 0, 0, 90, 0, Color)  ),  {** Pallet **}  Do(   di3DBox(0, 0, 0, xSize, 0.1, zSize - 0.05, Color),   di3DBox(0, /( ySize, 2) - 0.05, 0, xSize, 0.1, zSize - 0.05, Color),   di3DBox(0, ySize - 0.1, 0, xSize, 0.1, zSize - 0.05, Color),   c.CenterPoint := xSize / 5,   Repeat(    5,    di3DBox(Count * c.CenterPoint, 0, zSize - 0.05, -0.1, ySize, 0.05, Color)   )  ),  {** Simple Person **}  Do(   c.CenterPoint := ySize / 2,   {head} Ball( 0, c.CenterPoint, 1.8, 0.1, 180, 360, 0, -90 ,0, 7846395),   {neck} Cylinder(0, c.CenterPoint, 1.65, 0.1, 360, 0.05, 0, 90, 0, 7846395),   {shoulders}EllipseCone(0, c.CenterPoint, 1.52, 0.15, 360, 0.08, 0.05, 0.12, 0.2, 0, 90, 0, Color),   {arm 1}  Cone(0, 0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {arm 2}  Cone(0, -0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {hand 1} Cone(0.08, -0.12 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {hand 2}  Cone(0.08, 0.18 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {body}  EllipseCone(0,c.CenterPoint, 1.07, 0.45, 360, 0.12, 0.2, 0.08, 0.1, 0, 90, 0, Color),   {waist}  EllipseCone(0,c.CenterPoint, 0.92, 0.15, 360, 0.08, 0.1, 0.11, 0.15, 0, 90, 0, ColorGray),   {leg 1}  Cone(0, 0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {leg 2}  Cone(0, -0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {foot 1}  EllipseCone(0, 0.07 + c.CenterPoint, 0,0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack),   {foot 2}  EllipseCone(0, -0.07 + c.CenterPoint, 0, 0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack)  ),  {** Closed Carton Box **}  DrawModel3D(Model3D(1, c), 0, 0, 0, xSize, ySize, zSize),  {** Open Carton Box **}  DrawModel3D(Model3D(2, c), 0, 0, 0, xSize, ySize, zSize),  {** Pallet - Wood **}  DrawModel3D(Model3D(3, c), 0, 0, 0, xSize, ySize, zSize),  {** Pallet - Plastic **}  DrawModel3D(Model3D(4, c), 0, 0, 0, xSize, ySize, zSize),  {** Oildrum **}  DrawModel3D(Model3D(5, c), 0, 0, 0, xSize, ySize, zSize),  {** Crate **}  DrawModel3D(Model3D(6, c), 0, 0, 0, xSize, ySize, zSize) )]);
SetStatus(0);
int018;


{Atom: colaIntermediaSanidad}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([colaIntermediaSanidad], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(174);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, -5, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: colaIntermediaSeguridad}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([colaIntermediaSeguridad], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(175);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 7, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: colaIntermediaTráfico}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([colaIntermediaTráfico], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(176);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(18, 21, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: colaIntermediaExtinción}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([colaIntermediaExtinción], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(177);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 32, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: colaIntermediaOtros}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([colaIntermediaOtros], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(pDir([icons\bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(178);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 42, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.bernoulli(~1,~2,~3)|5. By percentage: ~70~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}bernoulli(70,1,2)]);
SetAtt(2, 100000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;
Up;
int014(1, 150, 1, 151, 0);
int014(1, 172, 1, 150, 0);
int014(2, 150, 1, 152, 0);
int014(3, 150, 1, 153, 0);
int014(4, 150, 1, 154, 0);
int014(5, 150, 1, 155, 0);
int014(1, 151, 1, 156, 0);
int014(1, 167, 2, 151, 0);
int014(1, 152, 1, 157, 0);
int014(1, 168, 2, 152, 0);
int014(1, 153, 1, 158, 0);
int014(1, 169, 2, 153, 0);
int014(1, 154, 1, 159, 0);
int014(1, 170, 2, 154, 0);
int014(1, 155, 1, 160, 0);
int014(1, 171, 2, 155, 0);
int014(1, 156, 1, 174, 0);
int014(2, 156, 1, 161, 0);
int014(1, 157, 1, 175, 0);
int014(2, 157, 3, 161, 0);
int014(1, 158, 1, 176, 0);
int014(2, 158, 5, 161, 0);
int014(1, 159, 1, 177, 0);
int014(2, 159, 7, 161, 0);
int014(1, 160, 1, 178, 0);
int014(2, 160, 9, 161, 0);
int014(2, 174, 2, 161, 0);
int014(2, 175, 4, 161, 0);
int014(2, 176, 6, 161, 0);
int014(2, 177, 8, 161, 0);
int014(2, 178, 10, 161, 0);
int014(1, 162, 1, 167, 0);
int014(1, 174, 1, 162, 0);
int014(1, 163, 1, 168, 0);
int014(1, 175, 1, 163, 0);
int014(1, 164, 1, 169, 0);
int014(1, 176, 1, 164, 0);
int014(1, 165, 1, 170, 0);
int014(1, 177, 1, 165, 0);
int014(1, 166, 1, 171, 0);
int014(1, 178, 1, 166, 0);
int014(0, 173, 1, 172, 0);
int006(10, 172, 1, 0, 0);


{Experiment settings}

int032(1, 15, 4);
int033(1, 1, 1, [RESULTS]);
int033(1, 1, 2, [1]);
int033(1, 1, 3, [14]);
int033(1, 1, 4, [4]);
int033(1, 2, 1, [Colas_de_intervención]);
int033(1, 2, 2, [2]);
int033(1, 2, 3, [Tº medio de espera en colas de intervención]);
int033(1, 2, 4, [[AVGSTAY]]);
int033(1, 3, 1, [Colas_de_operadoras]);
int033(1, 3, 2, [2]);
int033(1, 3, 3, [Tº medio de espera en operadoras]);
int033(1, 3, 4, [[AVGSTAY]]);
int033(1, 4, 1, [Operadoras_Extinción]);
int033(1, 4, 2, [1]);
int033(1, 4, 3, [Saturación de operadora de extinción]);
int033(1, 4, 4, [[STATUS]]);
int033(1, 5, 1, [Operadoras_Otros]);
int033(1, 5, 2, [1]);
int033(1, 5, 3, [Saturación de operadora de otros]);
int033(1, 5, 4, [[STATUS]]);
int033(1, 6, 1, [Operadoras_Sanidad]);
int033(1, 6, 2, [1]);
int033(1, 6, 3, [Saturación de operadora de sanidad]);
int033(1, 6, 4, [[STATUS]]);
int033(1, 7, 1, [Operadoras_Tráfico]);
int033(1, 7, 2, [1]);
int033(1, 7, 3, [Saturación de operadora de tráfico]);
int033(1, 7, 4, [[STATUS]]);
int033(1, 8, 1, [Operadora_Seguridad]);
int033(1, 8, 2, [1]);
int033(1, 8, 3, [Saturación de operadora de seguridad]);
int033(1, 8, 4, [[STATUS]]);
int033(1, 9, 1, [Servicios_Intervención_Extinción]);
int033(1, 9, 2, [1]);
int033(1, 9, 3, [Saturación media servicios intervención de Extinción]);
int033(1, 9, 4, [[STATUS]]);
int033(1, 10, 1, [Servicios_Intervención_Otros]);
int033(1, 10, 2, [1]);
int033(1, 10, 3, [Saturación media servicios intervención de Otros]);
int033(1, 10, 4, [[STATUS]]);
int033(1, 11, 1, [Servicios_Intervención_Sanidad]);
int033(1, 11, 2, [1]);
int033(1, 11, 3, [Saturación media servicios intervención de Sanidad]);
int033(1, 11, 4, [[STATUS]]);
int033(1, 12, 1, [Servicios_Intervención_Seguridad]);
int033(1, 12, 2, [1]);
int033(1, 12, 3, [Saturación media servicios intervención de Seguridad]);
int033(1, 12, 4, [[STATUS]]);
int033(1, 13, 1, [Servicios_Intervención_Tráfico]);
int033(1, 13, 2, [1]);
int033(1, 13, 3, [Saturación media servicios intervención de Tráfico]);
int033(1, 13, 4, [[STATUS]]);
int033(1, 14, 1, [Servidores de operadoras]);
int033(1, 14, 2, [2]);
int033(1, 14, 3, [Nivel medio de saturación de operadoras]);
int033(1, 14, 4, [[STATUS]]);
int033(1, 15, 1, [Servidores_de_intervención]);
int033(1, 15, 2, [2]);
int033(1, 15, 3, [Nivel medio de saturación de servidores de intervención]);
int033(1, 15, 4, [[STATUS]]);
int032(2, 4, 6);
int033(2, 1, 1, [Colas_de_operadoras]);
int033(2, 1, 2, [Cola_operadora_Extinción]);
int033(2, 1, 3, [Cola_operadora_Otros]);
int033(2, 1, 4, [Cola_operadora_Sanidad]);
int033(2, 1, 5, [Cola_operadora_Seguridad]);
int033(2, 1, 6, [Cola_operadora_Tráfico]);
int033(2, 2, 1, [Colas_de_intervención]);
int033(2, 2, 2, [Cola_Intervención_Extinción]);
int033(2, 2, 3, [Cola_Intervención_Otros]);
int033(2, 2, 4, [Cola_Intervención_Sanidad]);
int033(2, 2, 5, [Cola_Intervención_Seguridad]);
int033(2, 2, 6, [Cola_Intervención_Tráfico]);
int033(2, 3, 1, [Servidores de operadoras]);
int033(2, 3, 2, [Operadora_Seguridad]);
int033(2, 3, 3, [Operadoras_Extinción]);
int033(2, 3, 4, [Operadoras_Otros]);
int033(2, 3, 5, [Operadoras_Sanidad]);
int033(2, 3, 6, [Operadoras_Tráfico]);
int033(2, 4, 1, [Servidores_de_intervención]);
int033(2, 4, 2, [Servicios_Intervención_Extinción]);
int033(2, 4, 3, [Servicios_Intervención_Otros]);
int033(2, 4, 4, [Servicios_Intervención_Sanidad]);
int033(2, 4, 5, [Servicios_Intervención_Seguridad]);
int033(2, 4, 6, [Servicios_Intervención_Tráfico]);
int034;
SetAtt(1, 1);
SetExprAtt(2, [hr(12)]);
SetExprAtt(3, [200]);
SetAtt(4, 1);
SetAtt(5, 1);
SetTextAtt(11, [Experimento de 12h, con 3 ejecuciones, eliminando los primeros 200 segundos.
]);
SetAtt(13, 4);
int007;

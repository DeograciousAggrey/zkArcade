// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Groth16Verifier {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 14707479551755935338321499801526077900802860995872107253167985375096701149274;
    uint256 constant alphay  = 6456612733842876049149920229063526865857934454143253684480635477487558169953;
    uint256 constant betax1  = 20363429429757182163504587672177427837247396571672382272323081133098846719293;
    uint256 constant betax2  = 5702979327909310357893896008855978531124603304792437384418509785156830443620;
    uint256 constant betay1  = 3943910841020637819366394603927624304331508292559153946533045454675568003907;
    uint256 constant betay2  = 9910741917143488635216834093808653910014658921660297306900949845724160590221;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 5176639229907636792367054305011407956104189747420258498007915554993485714199;
    uint256 constant deltax2 = 4432656761396732272061645348257315959544345650442638568331886810858684643676;
    uint256 constant deltay1 = 4651059198439847153533994264397207533227097858961335687472432937984948283032;
    uint256 constant deltay2 = 20990110565401129189601923747523960672256306865221831577172379020192904023511;

    
    uint256 constant IC0x = 9661249578432133198545770007002287468879846299624918057136547796859797612445;
    uint256 constant IC0y = 12507759523174442997081279825087989565246610498055811527435867106961138386354;
    
    uint256 constant IC1x = 21152440440319690568721982818116008908724890760835959899420696772201190298847;
    uint256 constant IC1y = 11400436382640418657426156422646987709100048326468465035028492655590023629203;
    
    uint256 constant IC2x = 5650001814226199546421374737269490126685359748035440709118287165268570795110;
    uint256 constant IC2y = 11119963669207030138710300330143494849154335570414622967934150664472465726553;
    
    uint256 constant IC3x = 21870201920261879182836788911081661203500552419517964408209167956294421346233;
    uint256 constant IC3y = 18857341803537348852136497626594735778221739701500557581948349728121952811517;
    
    uint256 constant IC4x = 13283392487373803131375525020453647159510224321500361837298731730443051955186;
    uint256 constant IC4y = 5894413887284911540584954150992718533862947972237409907585253397296796457212;
    
    uint256 constant IC5x = 4101876822104495104290458293980855793106114831203653225293071772325613038460;
    uint256 constant IC5y = 12219573818424705067145309701394828742851639939390721488703963649582637770394;
    
    uint256 constant IC6x = 7733631318542715019640736937919569095203286719615312596753023453981484822781;
    uint256 constant IC6y = 10949130521099770251838504127396372859511129279780557299232436415096088184834;
    
    uint256 constant IC7x = 21577477246631199286539122686517146561649832924925392497265385736647951614378;
    uint256 constant IC7y = 14297141964825699646174394158818026658385841979749261397972308057937672868177;
    
    uint256 constant IC8x = 9675121173635882500048126926221916279683985831938904331568601864351495732118;
    uint256 constant IC8y = 11560159176459545604422129636373512540945067678429113580780410703787047229278;
    
    uint256 constant IC9x = 6108241620730765344821913921723174948088768349274708717168236488722323874386;
    uint256 constant IC9y = 1050760022189310283515193626973266423728670497609847908759115791827154808564;
    
    uint256 constant IC10x = 18167310251542231010715277409586457070460430789513827237800674587632330742511;
    uint256 constant IC10y = 15974409190474926508883848294594887515273079490715195039059017933727731444382;
    
    uint256 constant IC11x = 9416814564026894965599059229644502542891986314207895490607373374566153285354;
    uint256 constant IC11y = 17606873253659462030180294892675543622160865311444341903193212993295536767333;
    
    uint256 constant IC12x = 18259358912228496652701222546836972743965589184411935666367000129551697213504;
    uint256 constant IC12y = 1861824135044889407366623046735586856606637065533153874184331686431231894789;
    
    uint256 constant IC13x = 244413755342418083335299836298779376187460652033741553867346427573289216487;
    uint256 constant IC13y = 4373903211331625496982671952166517561491652237780973977114782695866838307673;
    
    uint256 constant IC14x = 8431241756010827949382186806644238606499808664846359577477956774196016629837;
    uint256 constant IC14y = 13961744669896022955539670168758612693602082578920103540860983402673706491631;
    
    uint256 constant IC15x = 8187725586289959735145408837140385900327465241117186496317277864685361999683;
    uint256 constant IC15y = 10767887800606791519131556340122558388280179433295370711647410259690159397601;
    
    uint256 constant IC16x = 13483135067570479979746458396399003607996892123262316824909104740150918554863;
    uint256 constant IC16y = 14890829685995997063843517763813516465450918407721787619582018222119264368631;
    
    uint256 constant IC17x = 11894143131168429862041918582645683095478956167052553269429339381441242329505;
    uint256 constant IC17y = 18356083874974207281850797475119022208027742613367062470904164283265644273925;
    
    uint256 constant IC18x = 5959646542071539145309117344952141652241035955727927758330739409415383641317;
    uint256 constant IC18y = 12046164628238553265632592509274246107810124045482177946533517816191071280385;
    
    uint256 constant IC19x = 951714502141586854107511621675157559946454787675439628673418998630651381023;
    uint256 constant IC19y = 14875437737060083957742925975223074213424064210628649195815985158446051517240;
    
    uint256 constant IC20x = 10160327081864238613494548079285453476997202296261781728834628818798455310816;
    uint256 constant IC20y = 12963779054137302513795179020542922560686360600305984796225458835752643159926;
    
    uint256 constant IC21x = 10204722472064597911608524769676023690050736407191814941819511219681106916120;
    uint256 constant IC21y = 18656793954809576218741783832859959602898321194133780547798503818385161065216;
    
    uint256 constant IC22x = 17305263611897029098643673817496960965255975749708926988344439058147659706737;
    uint256 constant IC22y = 4214818915066796998949339061912109604040701913165588751078004774597095702983;
    
    uint256 constant IC23x = 1340062679813801727659535934704544318766428083645695795309933482423763790911;
    uint256 constant IC23y = 13023932211480934910576037784295733755139278250104099775004121613110289192854;
    
    uint256 constant IC24x = 18556174026214953554023958145592329929351398911655809017564715753900927753263;
    uint256 constant IC24y = 7697901890986432598228431971419884551696488708412815549027559053188906607751;
    
    uint256 constant IC25x = 9257623593686896368456963988829804781737404194243206497809465413309788860956;
    uint256 constant IC25y = 12215032947095183966842313191154799580237342658448466462921672030437629553440;
    
    uint256 constant IC26x = 12761073285164200122721161484068175888445599761390225075355174277641653670817;
    uint256 constant IC26y = 21339283372214354609193102415931129633826282310093080874427988589196976814670;
    
    uint256 constant IC27x = 13758340448643492166671098885986618421616643150844608191226127091475243829690;
    uint256 constant IC27y = 12628438720820416418573835930331803345899458693885694677742728881224348164354;
    
    uint256 constant IC28x = 19973633723172339307385521545858417804525163880559968769074038789006463837774;
    uint256 constant IC28y = 14886473924373546987150819423121839390043196928319154134831354377219208406110;
    
    uint256 constant IC29x = 3713754440895944128120546694420179688820710784393179125238863393731585363902;
    uint256 constant IC29y = 5047176749287421405745653213238713567128356062331785044024799108081615166252;
    
    uint256 constant IC30x = 18315319458626182436174888486009420987803990512208897810856077357000814312467;
    uint256 constant IC30y = 2881023396658752702139754905607495790033995745254773625608233433250347931462;
    
    uint256 constant IC31x = 17601539694001452596656217279729265930249242276062784896939459653614914919534;
    uint256 constant IC31y = 20856823398710977285010384721014643540693861221588296375002409481431490407564;
    
    uint256 constant IC32x = 2771865655173510931694499086761428084576689958850343185751596890083087887642;
    uint256 constant IC32y = 13478520106816928929540899712242761530379337433621936918344815624349470793082;
    
    uint256 constant IC33x = 2322064273515059402951767369720998408774802772395142448593872592167902685952;
    uint256 constant IC33y = 15282441263774157322497625292640959454840909100058588930523851160405964910792;
    
    uint256 constant IC34x = 6611090060123179096167696115421135163673322447965035164535281457422912409790;
    uint256 constant IC34y = 4650987963338614052661526259071325574808501238174436960930621469587379182844;
    
    uint256 constant IC35x = 14057214722798469554710145454107193162262791328311103203429918868504115278502;
    uint256 constant IC35y = 4802485527112347265289152199054631403928741015345751921294976091419823532446;
    
    uint256 constant IC36x = 17829513127506227884644303538675272932695049762243237563854898482366806466650;
    uint256 constant IC36y = 21394349489844593102194878082456794257599440376776529867306040768258148168515;
    
    uint256 constant IC37x = 2436061678541996729212610835273304092913322750587853565182628359884393439556;
    uint256 constant IC37y = 14890186286090661211520294304640618475989748279130692912480231242562097633694;
    
    uint256 constant IC38x = 5675402815884565486902621140128132657363885524429093012835826108797538588362;
    uint256 constant IC38y = 15134854847392876668174681127987491375112563558746822010013131882746404698270;
    
    uint256 constant IC39x = 14708650573262541175173600147616846102270587866816977147405078922633780542047;
    uint256 constant IC39y = 14495931204130620864639802899703126584989409998322193262479058986464007904744;
    
    uint256 constant IC40x = 15259661047434807085803817005103839064021118729656537420609255305314390183721;
    uint256 constant IC40y = 8711281089130056899962289464836643341826437135442897679288269451371921081928;
    
    uint256 constant IC41x = 5204759880420282626415897761488219013292208624687732847405775596113657372353;
    uint256 constant IC41y = 18578001537971880983575476377440713440660390307323072757823014520943763534634;
    
    uint256 constant IC42x = 9341053526032341159280693200457625136193426610050629153633302464562472825890;
    uint256 constant IC42y = 20199768440423920182230531184355918076015512504845888334715858501171899277906;
    
    uint256 constant IC43x = 20294980012253484295155388556425337619082139506765360528383504528888894444310;
    uint256 constant IC43y = 1101800726707815561247669321149355491047929837570865489325002444255104660368;
    
    uint256 constant IC44x = 10977361651728606672546949255363506372994816789289738214386938695179301452536;
    uint256 constant IC44y = 13024658196201517770783781551369209230363601578844796202047375115086598283555;
    
    uint256 constant IC45x = 18276444796109264871190385560686089875306738152996714889371674555822299233472;
    uint256 constant IC45y = 11974991049079710735867698978915908742248364241458230781114581189064429829359;
    
    uint256 constant IC46x = 14058890053596906512459725416672593603909637640526388231630329063242851915193;
    uint256 constant IC46y = 18630186207434607360191836139478784665142095569579480541701925313239650558677;
    
    uint256 constant IC47x = 6897146170338153294994007272341680356449744393342002009692390725894058234129;
    uint256 constant IC47y = 21268668144272974473050840912440418339920617054098632864994197683494212065149;
    
    uint256 constant IC48x = 14646741966932987457212303941672338827677067682136053851380596511167524791191;
    uint256 constant IC48y = 19903922769410597354718154678653556755990172859912793072709327095167210363573;
    
    uint256 constant IC49x = 1356714832307122755462546061155399215523096081807334477774094783427252425294;
    uint256 constant IC49y = 10244045548919954427920843987476059644981162243557584658353580499355940791345;
    
    uint256 constant IC50x = 3817333706768461130264332841684481063367880539314364645861117599280355056660;
    uint256 constant IC50y = 9394896240215354480570653261623799270732847398222413588548508301689281285207;
    
    uint256 constant IC51x = 6127027206221969576987487620822790732865414520608535539681646689409183358362;
    uint256 constant IC51y = 13596298439829586398983523054088080408735985362195792281391995781684588399857;
    
    uint256 constant IC52x = 10769321404220829014169276723186335038490274789994617113770078676086329712212;
    uint256 constant IC52y = 6235559193531667683203366407541364460475781864512364361227648425578515764205;
    
    uint256 constant IC53x = 12137144952856701642985165419035464129202906551913083478629489435137302876837;
    uint256 constant IC53y = 6544336708653488477519895384134815190115889515274433816557336900919007105653;
    
    uint256 constant IC54x = 13436851243476059532539590866137972842369893320947715396097330285308416872272;
    uint256 constant IC54y = 1155434766877194449828158671010191831535111061781933087968004220881632612753;
    
    uint256 constant IC55x = 7173012387280370460988140710077577379758605527783605615081323808420817765906;
    uint256 constant IC55y = 2737407034690649130866910486306972560043579533016050298028557956667253502193;
    
    uint256 constant IC56x = 1338925787879219854522626214235952110640752104250237836933389159426257167681;
    uint256 constant IC56y = 4350246992256846900096539383400249667762753628807957628895084836161670809762;
    
    uint256 constant IC57x = 17938491979379053342703784532258818283682931511974822709786287865142119662163;
    uint256 constant IC57y = 16305644010818737488598748662069965610716669354242727978022744995710580970080;
    
    uint256 constant IC58x = 21357648219846819189926995244461384616193046557671932061421421991193734550130;
    uint256 constant IC58y = 1433459871593262633955466166710454931522082405552309312164425385894844852295;
    
    uint256 constant IC59x = 6430747795743231931221049199756469379830075793604687973254754834764176679793;
    uint256 constant IC59y = 20561079887221427212877507730503179427419726418635810390359723374627501880141;
    
    uint256 constant IC60x = 21382177839956209319822877927485275044678427883999724286014894856395249237575;
    uint256 constant IC60y = 1481660397046025304591163213237389642114716660586502346330586390415225249646;
    
    uint256 constant IC61x = 2550957140329014671687901439336161192333600182918236760365770516665903542847;
    uint256 constant IC61y = 15400147721627256024615774708259025987994527016190820637945895086764008211895;
    
    uint256 constant IC62x = 1461426547947175620234710968379174307922157529077708221446514459212811347252;
    uint256 constant IC62y = 17936510548632858186282229341724950801031752870595446991864687651896752424011;
    
    uint256 constant IC63x = 13008906252199698957067237907719224621465251910021989297490271132896196855852;
    uint256 constant IC63y = 14312440401644371795090625325043199979718617113359270379293021501130049455547;
    
    uint256 constant IC64x = 17817431048014961825715021528197586609996576677491550459409057956998376223283;
    uint256 constant IC64y = 7235886989299081613663749356143169137520913973361546489543613411875567593514;
    
    uint256 constant IC65x = 6970191512464897615253102267821401524508324253829213529873247384726202607578;
    uint256 constant IC65y = 2314212360664653743244860000513498770879237943757841562393187764585082988419;
    
    uint256 constant IC66x = 21878606476011638085351395082648282988689074674908741861485024755619271822233;
    uint256 constant IC66y = 9541956895554823240494001113571718838349049356348462544963601164896028977515;
    
    uint256 constant IC67x = 1145133804508563354754974716362605676235344117892734778529823034375010241467;
    uint256 constant IC67y = 290341302324666045343028044253097674320208461156534910732103287271554604592;
    
    uint256 constant IC68x = 20210674857189465338383617052502135078687400834732333634135355841253871611012;
    uint256 constant IC68y = 17266880387414251567394278841396723760528785979574566759046697116386096299505;
    
    uint256 constant IC69x = 21112186899381561557667784298600119571454765586132014549178522256454005479658;
    uint256 constant IC69y = 5132252739262314489463181069786521719036259773109871922802212745869655356556;
    
    uint256 constant IC70x = 5725525003754674960942226898009592466458072391574771000579863948594983532497;
    uint256 constant IC70y = 3656017017171748513433329748785585737452187824369504648640807707224279345845;
    
    uint256 constant IC71x = 8555660686533039277142475370230302684157031263825152314786232467517446862174;
    uint256 constant IC71y = 18298085395994313069853120689208225535059369523639790702057811184626755262734;
    
    uint256 constant IC72x = 18308251996828394826632687054830677733974848709457992291721769710431315844209;
    uint256 constant IC72y = 13902070632102975766246561598814692196466849405719352387600473694005441280548;
    
    uint256 constant IC73x = 6164443717731242569320533765346873568253527376858093921537535592073895129608;
    uint256 constant IC73y = 83024584061017192108855706411448912983301849984155219505019143514259366911;
    
    uint256 constant IC74x = 9679344462363234480426309753739137561748528895468629443466809944426053492966;
    uint256 constant IC74y = 9754520624150347282399294477732851731972290110844062457245713731354427586014;
    
    uint256 constant IC75x = 6614411647170432850962736549398438848511810497898945559757858931738681559833;
    uint256 constant IC75y = 2441659534662304547978549007399662788182242114809788570958223435755002391483;
    
    uint256 constant IC76x = 12219465320142425184125442272001826103168457392181558791754665678152876043037;
    uint256 constant IC76y = 2453735138935297586885163115976295700102142296377203809142159807250414952953;
    
    uint256 constant IC77x = 19317747078717260892904033142550686293253859026886816500805440017191747823735;
    uint256 constant IC77y = 1526608149829646317665045803298549273573480361082812863760914362096753837178;
    
    uint256 constant IC78x = 6907394477665210118038187324559001207676898896039252763119138752813958661795;
    uint256 constant IC78y = 4130212465526945246493203414916366699341488671919028096400420419540889476317;
    
    uint256 constant IC79x = 10754718530782205807846666503426101802541594733313617726811872642217281086053;
    uint256 constant IC79y = 13912162342397223243150747788947474325977252814672054586461438616863802187342;
    
    uint256 constant IC80x = 12141546467277942399794568023184326252270331180079695407348418200695743121131;
    uint256 constant IC80y = 1701840995455508350160668203528510192159336667630656665260113982282063986364;
    
    uint256 constant IC81x = 11676499498831620611527016079093573184361337231521133836798716798674632540718;
    uint256 constant IC81y = 12655950383669298171618214061710977854429526046864007852178253510697688843413;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[81] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, r)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                
                g1_mulAccC(_pVk, IC33x, IC33y, calldataload(add(pubSignals, 1024)))
                
                g1_mulAccC(_pVk, IC34x, IC34y, calldataload(add(pubSignals, 1056)))
                
                g1_mulAccC(_pVk, IC35x, IC35y, calldataload(add(pubSignals, 1088)))
                
                g1_mulAccC(_pVk, IC36x, IC36y, calldataload(add(pubSignals, 1120)))
                
                g1_mulAccC(_pVk, IC37x, IC37y, calldataload(add(pubSignals, 1152)))
                
                g1_mulAccC(_pVk, IC38x, IC38y, calldataload(add(pubSignals, 1184)))
                
                g1_mulAccC(_pVk, IC39x, IC39y, calldataload(add(pubSignals, 1216)))
                
                g1_mulAccC(_pVk, IC40x, IC40y, calldataload(add(pubSignals, 1248)))
                
                g1_mulAccC(_pVk, IC41x, IC41y, calldataload(add(pubSignals, 1280)))
                
                g1_mulAccC(_pVk, IC42x, IC42y, calldataload(add(pubSignals, 1312)))
                
                g1_mulAccC(_pVk, IC43x, IC43y, calldataload(add(pubSignals, 1344)))
                
                g1_mulAccC(_pVk, IC44x, IC44y, calldataload(add(pubSignals, 1376)))
                
                g1_mulAccC(_pVk, IC45x, IC45y, calldataload(add(pubSignals, 1408)))
                
                g1_mulAccC(_pVk, IC46x, IC46y, calldataload(add(pubSignals, 1440)))
                
                g1_mulAccC(_pVk, IC47x, IC47y, calldataload(add(pubSignals, 1472)))
                
                g1_mulAccC(_pVk, IC48x, IC48y, calldataload(add(pubSignals, 1504)))
                
                g1_mulAccC(_pVk, IC49x, IC49y, calldataload(add(pubSignals, 1536)))
                
                g1_mulAccC(_pVk, IC50x, IC50y, calldataload(add(pubSignals, 1568)))
                
                g1_mulAccC(_pVk, IC51x, IC51y, calldataload(add(pubSignals, 1600)))
                
                g1_mulAccC(_pVk, IC52x, IC52y, calldataload(add(pubSignals, 1632)))
                
                g1_mulAccC(_pVk, IC53x, IC53y, calldataload(add(pubSignals, 1664)))
                
                g1_mulAccC(_pVk, IC54x, IC54y, calldataload(add(pubSignals, 1696)))
                
                g1_mulAccC(_pVk, IC55x, IC55y, calldataload(add(pubSignals, 1728)))
                
                g1_mulAccC(_pVk, IC56x, IC56y, calldataload(add(pubSignals, 1760)))
                
                g1_mulAccC(_pVk, IC57x, IC57y, calldataload(add(pubSignals, 1792)))
                
                g1_mulAccC(_pVk, IC58x, IC58y, calldataload(add(pubSignals, 1824)))
                
                g1_mulAccC(_pVk, IC59x, IC59y, calldataload(add(pubSignals, 1856)))
                
                g1_mulAccC(_pVk, IC60x, IC60y, calldataload(add(pubSignals, 1888)))
                
                g1_mulAccC(_pVk, IC61x, IC61y, calldataload(add(pubSignals, 1920)))
                
                g1_mulAccC(_pVk, IC62x, IC62y, calldataload(add(pubSignals, 1952)))
                
                g1_mulAccC(_pVk, IC63x, IC63y, calldataload(add(pubSignals, 1984)))
                
                g1_mulAccC(_pVk, IC64x, IC64y, calldataload(add(pubSignals, 2016)))
                
                g1_mulAccC(_pVk, IC65x, IC65y, calldataload(add(pubSignals, 2048)))
                
                g1_mulAccC(_pVk, IC66x, IC66y, calldataload(add(pubSignals, 2080)))
                
                g1_mulAccC(_pVk, IC67x, IC67y, calldataload(add(pubSignals, 2112)))
                
                g1_mulAccC(_pVk, IC68x, IC68y, calldataload(add(pubSignals, 2144)))
                
                g1_mulAccC(_pVk, IC69x, IC69y, calldataload(add(pubSignals, 2176)))
                
                g1_mulAccC(_pVk, IC70x, IC70y, calldataload(add(pubSignals, 2208)))
                
                g1_mulAccC(_pVk, IC71x, IC71y, calldataload(add(pubSignals, 2240)))
                
                g1_mulAccC(_pVk, IC72x, IC72y, calldataload(add(pubSignals, 2272)))
                
                g1_mulAccC(_pVk, IC73x, IC73y, calldataload(add(pubSignals, 2304)))
                
                g1_mulAccC(_pVk, IC74x, IC74y, calldataload(add(pubSignals, 2336)))
                
                g1_mulAccC(_pVk, IC75x, IC75y, calldataload(add(pubSignals, 2368)))
                
                g1_mulAccC(_pVk, IC76x, IC76y, calldataload(add(pubSignals, 2400)))
                
                g1_mulAccC(_pVk, IC77x, IC77y, calldataload(add(pubSignals, 2432)))
                
                g1_mulAccC(_pVk, IC78x, IC78y, calldataload(add(pubSignals, 2464)))
                
                g1_mulAccC(_pVk, IC79x, IC79y, calldataload(add(pubSignals, 2496)))
                
                g1_mulAccC(_pVk, IC80x, IC80y, calldataload(add(pubSignals, 2528)))
                
                g1_mulAccC(_pVk, IC81x, IC81y, calldataload(add(pubSignals, 2560)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            
            checkField(calldataload(add(_pubSignals, 1024)))
            
            checkField(calldataload(add(_pubSignals, 1056)))
            
            checkField(calldataload(add(_pubSignals, 1088)))
            
            checkField(calldataload(add(_pubSignals, 1120)))
            
            checkField(calldataload(add(_pubSignals, 1152)))
            
            checkField(calldataload(add(_pubSignals, 1184)))
            
            checkField(calldataload(add(_pubSignals, 1216)))
            
            checkField(calldataload(add(_pubSignals, 1248)))
            
            checkField(calldataload(add(_pubSignals, 1280)))
            
            checkField(calldataload(add(_pubSignals, 1312)))
            
            checkField(calldataload(add(_pubSignals, 1344)))
            
            checkField(calldataload(add(_pubSignals, 1376)))
            
            checkField(calldataload(add(_pubSignals, 1408)))
            
            checkField(calldataload(add(_pubSignals, 1440)))
            
            checkField(calldataload(add(_pubSignals, 1472)))
            
            checkField(calldataload(add(_pubSignals, 1504)))
            
            checkField(calldataload(add(_pubSignals, 1536)))
            
            checkField(calldataload(add(_pubSignals, 1568)))
            
            checkField(calldataload(add(_pubSignals, 1600)))
            
            checkField(calldataload(add(_pubSignals, 1632)))
            
            checkField(calldataload(add(_pubSignals, 1664)))
            
            checkField(calldataload(add(_pubSignals, 1696)))
            
            checkField(calldataload(add(_pubSignals, 1728)))
            
            checkField(calldataload(add(_pubSignals, 1760)))
            
            checkField(calldataload(add(_pubSignals, 1792)))
            
            checkField(calldataload(add(_pubSignals, 1824)))
            
            checkField(calldataload(add(_pubSignals, 1856)))
            
            checkField(calldataload(add(_pubSignals, 1888)))
            
            checkField(calldataload(add(_pubSignals, 1920)))
            
            checkField(calldataload(add(_pubSignals, 1952)))
            
            checkField(calldataload(add(_pubSignals, 1984)))
            
            checkField(calldataload(add(_pubSignals, 2016)))
            
            checkField(calldataload(add(_pubSignals, 2048)))
            
            checkField(calldataload(add(_pubSignals, 2080)))
            
            checkField(calldataload(add(_pubSignals, 2112)))
            
            checkField(calldataload(add(_pubSignals, 2144)))
            
            checkField(calldataload(add(_pubSignals, 2176)))
            
            checkField(calldataload(add(_pubSignals, 2208)))
            
            checkField(calldataload(add(_pubSignals, 2240)))
            
            checkField(calldataload(add(_pubSignals, 2272)))
            
            checkField(calldataload(add(_pubSignals, 2304)))
            
            checkField(calldataload(add(_pubSignals, 2336)))
            
            checkField(calldataload(add(_pubSignals, 2368)))
            
            checkField(calldataload(add(_pubSignals, 2400)))
            
            checkField(calldataload(add(_pubSignals, 2432)))
            
            checkField(calldataload(add(_pubSignals, 2464)))
            
            checkField(calldataload(add(_pubSignals, 2496)))
            
            checkField(calldataload(add(_pubSignals, 2528)))
            
            checkField(calldataload(add(_pubSignals, 2560)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }

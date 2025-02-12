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
    uint256 constant alphax  = 13851848537781079916275444861215311074601368150818363432536544979968863791625;
    uint256 constant alphay  = 15752180162116955539742378179010725381932819252623185701714907958748088122270;
    uint256 constant betax1  = 20669307861022715931142339233768856202324607683371559887351761928577215158175;
    uint256 constant betax2  = 7725738712144499154784453083561366814238823980612079583832894516691008053038;
    uint256 constant betay1  = 9699573805522280732674179652759637996702641638682655681869166566335186182038;
    uint256 constant betay2  = 216489697285325829217059123856677256617056524754173056250562552334858572691;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 16789159451323273926631915472926150081081433821639998069787817880603863795653;
    uint256 constant deltax2 = 1593785863198116174398269045145969362903522797066507129229542216271228851734;
    uint256 constant deltay1 = 11024040925116261869290228684561202735377715212673317201882136112106380120143;
    uint256 constant deltay2 = 7946768227296961725285907289439861463267842187968442082544572619002170941952;

    
    uint256 constant IC0x = 1366399133610074732904078853263245793206356510761000455063637325596869604981;
    uint256 constant IC0y = 13806641554105681286442722508441096491110177227305448207149627929276164851021;
    
    uint256 constant IC1x = 11213714056277470871900330680854100091346656911715431983705640109504191990473;
    uint256 constant IC1y = 2484830697716820023985447930521610082604728449696066023256979089042398260861;
    
    uint256 constant IC2x = 1293727403725495012217235396743040294592529578554247227542125956319627971512;
    uint256 constant IC2y = 10190469942572954482970673778273547460402560849415298162812919045133274467973;
    
    uint256 constant IC3x = 18569424449513613147109795396283145088258416402102578716335098335157936601318;
    uint256 constant IC3y = 12453537022114453185982455845278598478348087537151355953704368693939780380857;
    
    uint256 constant IC4x = 21283516215657981231570607909493827922129031944536077428384295663913230884853;
    uint256 constant IC4y = 16910379658189202228006903498819338187363591898504184756606604300586309267751;
    
    uint256 constant IC5x = 14415502449929117424597346864163823119056790834239578304425864508011024165024;
    uint256 constant IC5y = 19467269593364370439728227064027206189579241956821239857602142588363495356945;
    
    uint256 constant IC6x = 16423193250331557088563231746192422677006923827470764629191389957973794418234;
    uint256 constant IC6y = 3675646228470377546990740940801849836408992133169801996682086593109589646094;
    
    uint256 constant IC7x = 9730209089045930762718180034941757678506617131499068445021348971892770748598;
    uint256 constant IC7y = 4686353790598932675710025585514374365351170116032895780505847073911788341760;
    
    uint256 constant IC8x = 8152950939358715806855004731474511270701678449265911843041447669010130097848;
    uint256 constant IC8y = 7077797846639451501319215604056586089602630839863650198292588215869151794346;
    
    uint256 constant IC9x = 13486318583544495270323219389869879107410340663879411428678104002555269020595;
    uint256 constant IC9y = 7261456914976762725177283648127865387281253465982792281177601469953469606472;
    
    uint256 constant IC10x = 13145051189013074430572683813232873106597108552251247125546371816622614172968;
    uint256 constant IC10y = 20026671661828356703791238998884002120159951652294731203766354721185654549212;
    
    uint256 constant IC11x = 2986497622161933103306707167417046268384131753971901838740520749106204880046;
    uint256 constant IC11y = 2449384499549102817829412579711118344650081679456886624521584376515970337511;
    
    uint256 constant IC12x = 1345738764896062341589237465244139681055501935455821727555189567912365890389;
    uint256 constant IC12y = 11678743774659865088044214565874517805087601401610996985405781622829564531169;
    
    uint256 constant IC13x = 882766523988363716391303865365608722806101262136734075622157018602943642182;
    uint256 constant IC13y = 9606404786228528572862863192078742706279305799575848598453309321715049756074;
    
    uint256 constant IC14x = 5865160133155039834421206720301239297960236991231061761397510402100540546244;
    uint256 constant IC14y = 21720465558125539210214040022741154383571804215180745262240154218237678825041;
    
    uint256 constant IC15x = 4185053015935421836521282576271977336918696913893475538961830862443437602238;
    uint256 constant IC15y = 4013616107500601231225231295616134974220573728104485913796221979179083334791;
    
    uint256 constant IC16x = 4830260033368371937854478033791119825651256222268493894194480212422189696028;
    uint256 constant IC16y = 1995106764180289659559133554949961734323604959141498795184066867898429444336;
    
    uint256 constant IC17x = 1029376739898972408812280042624823402596532945485317554475203901377033793541;
    uint256 constant IC17y = 6341971879805299227321852311255973699352717863249436299687210156620800043267;
    
    uint256 constant IC18x = 14263243421762720586468622888515121720276183112496540990826598949541254941545;
    uint256 constant IC18y = 14555387060593133212760505518207013150673351424876058141133368458958432802558;
    
    uint256 constant IC19x = 2213045102524074398695650259740320953104858132146205337028603792180380662218;
    uint256 constant IC19y = 14226897222701363281131827865702267084288665578540400820148103201594869162847;
    
    uint256 constant IC20x = 717676740304237829334166854965030292005997855841244988089549936684274514146;
    uint256 constant IC20y = 15038506694317257588240485024335843950667104542162468572463660535238272018577;
    
    uint256 constant IC21x = 12809916685178749900332147739476875507624609649513805630196237041573928973876;
    uint256 constant IC21y = 12686510422175262367653013345072958600593964911893806676097489755155846540295;
    
    uint256 constant IC22x = 9580372696414450119801200065819855625121399890831868517994356790250816275187;
    uint256 constant IC22y = 11765002089330440824354625114255392260350116506696939220604317412082786795308;
    
    uint256 constant IC23x = 12814828769163057641505925555563432234250707203456992895755839181489453426234;
    uint256 constant IC23y = 18055935613058234867546277678920303181442169767708177752402327614539285160602;
    
    uint256 constant IC24x = 15770019211795139165368391083210353439656548574585959518436181001728554499631;
    uint256 constant IC24y = 15650865030878219420017147574091477869395387174000247056646570955264458504688;
    
    uint256 constant IC25x = 16994965244286992523578501312494636403122644322325429039603399820738259127679;
    uint256 constant IC25y = 13591063742291813577538346510505159999882147485945076561004249921842845163812;
    
    uint256 constant IC26x = 13287204086085552381445215141960965354571500688212104504206982957018880833339;
    uint256 constant IC26y = 355177183194700855510381263034083069087262170524109109096978954553371236321;
    
    uint256 constant IC27x = 16930495301651139133431985075362170352963914257725585766305446229461059467160;
    uint256 constant IC27y = 7234418364391011823118149026923832749790093416914822386170866464432243433964;
    
    uint256 constant IC28x = 18679622764750246771535205796099057615621101373860102929777389242303473957492;
    uint256 constant IC28y = 17343396275391110921131173160512853323488133641048203098252632092865451584845;
    
    uint256 constant IC29x = 833514559918370702369723891792597684670266303531852301275486564807440211396;
    uint256 constant IC29y = 18610334640030447149735691082455300682467188880196673190311853176709656986597;
    
    uint256 constant IC30x = 1382975501805590768770526100578133413962344835816163381013587805269219078975;
    uint256 constant IC30y = 11420298959433924860279070242251370203386151352637321967593471148226099725309;
    
    uint256 constant IC31x = 109316218210530117705309182696279771298149453125665273559568090467740362066;
    uint256 constant IC31y = 2870890716730713832762027795045513867267199711402306693171144590097318949298;
    
    uint256 constant IC32x = 9746216692113137704371016904050300067460354979182277194849260064394354629613;
    uint256 constant IC32y = 7193450623341783405755323234144540723008700723000902545996098820850840618521;
    
    uint256 constant IC33x = 13503929845277803797041936309526462138853172175638099287552366682048396969723;
    uint256 constant IC33y = 5167912453697515329447977974591908104415217644999287637365318152507763986497;
    
    uint256 constant IC34x = 10178992860590632758595529194393779937040621431661147201259313168925654712330;
    uint256 constant IC34y = 14797003498247814234533952114244312653816980358281579734871389436723111879117;
    
    uint256 constant IC35x = 14211336064768317775162819272816311068489183630889199265248504385171659135335;
    uint256 constant IC35y = 17395357439013819947752571834996216399905487888484287685810775130669946692647;
    
    uint256 constant IC36x = 15251666369075925012982312683790635922538116394147901221424343080121829528502;
    uint256 constant IC36y = 17336786793910857431565887269182584972295836545494899070005265794247443891449;
    
    uint256 constant IC37x = 2385044685807238733825682337063771128512442367140703267145795854728159398306;
    uint256 constant IC37y = 9247512241891132780278662346516794694754418303806242086787114865982038619716;
    
    uint256 constant IC38x = 3054577486925302728556258370226570441522364770699975128900979262428795356305;
    uint256 constant IC38y = 951470899916589254328305290913008414960281921239443159834478836290136314537;
    
    uint256 constant IC39x = 8830611266037688908102009720975734093715725211659331251294114490864173839342;
    uint256 constant IC39y = 20695107437363696975105437181309485002834238661147251631999549827334959411178;
    
    uint256 constant IC40x = 4635143704866786684510807533288315037065463608770628703396678827961754482866;
    uint256 constant IC40y = 4443835433128932007474130068971273221041113624752472081559105289649849657464;
    
    uint256 constant IC41x = 3991861429773629572785274435739733826447213681360459569879562581159410271030;
    uint256 constant IC41y = 598550605560593337767749283943028446540982833392298304933452962034127358273;
    
    uint256 constant IC42x = 9742059648794123680348348687531951335476009149793546509977997489046867253520;
    uint256 constant IC42y = 4258410111418321092591062328612441403242617559843096664297904415849893186984;
    
    uint256 constant IC43x = 4197358932466712359259239457914454446321509806791895500962841858386169106594;
    uint256 constant IC43y = 2301663425796397059361884175626190781056960954219080316211114306113517664641;
    
    uint256 constant IC44x = 12181332672710638464108052434080917963903210994495126943748379369687917891861;
    uint256 constant IC44y = 6613726653245776439072352704829500203586648302178621811524515843671768885607;
    
    uint256 constant IC45x = 21658749360630148118984480872664275678655918963829135299219406240899018334420;
    uint256 constant IC45y = 13920623863336336665164891065265895109439177435483806325683025903164008953577;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[45] calldata _pubSignals) public view returns (bool) {
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
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }

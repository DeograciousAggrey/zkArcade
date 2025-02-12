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
    uint256 constant alphax  = 8584319529964643804016417211170744975441558715985039893131735612911254588652;
    uint256 constant alphay  = 10410925484373427842794778028044449438353707791180261993106627664107003481819;
    uint256 constant betax1  = 10907186938772777848661428104925518967756659316180102733503929499850728339797;
    uint256 constant betax2  = 6001953892690012417464150299349808311660609458360977666824381172212461908556;
    uint256 constant betay1  = 19644160283078613431477337523766643356787247708478837040737084290576048961832;
    uint256 constant betay2  = 19777156600682934390408691710892053225297361917998392184274531684625932581073;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 12397058582806162424355963538773542789092694308065556631507948459668403416639;
    uint256 constant deltax2 = 13499470899486817411972912602815510883807942912251701901128584925723589396151;
    uint256 constant deltay1 = 19736834883711338209381537388092791885653219823031343960854271754695436885704;
    uint256 constant deltay2 = 1809378999043650776757698081995336860091858578844635640354144863877699659719;

    
    uint256 constant IC0x = 678658815468388852359340768225263003789611019790643971176553930875855358475;
    uint256 constant IC0y = 5239819770113222034867429269138344481961044254091517726415932572699828876685;
    
    uint256 constant IC1x = 14999661902948394877211277304530685572190998741873593780819324461473973018720;
    uint256 constant IC1y = 6357001881686135558311364057929202955024701089225568319608229870095826308599;
    
    uint256 constant IC2x = 17760141132835449952479549880323449264901690057459476229101393405573429688492;
    uint256 constant IC2y = 20029564097338062397286319687866053792316597020719552733609921040174737607559;
    
    uint256 constant IC3x = 18340631993944257556585882071033102586358345137007586520910215205118593406734;
    uint256 constant IC3y = 10914787463871474672023448575339176844186574675954611005812788282284630318780;
    
    uint256 constant IC4x = 3976217818596987868328807274336862218271748897706695513343669048150717174980;
    uint256 constant IC4y = 12874527138605417119520736145566649068557796559923216650298432998252117030510;
    
    uint256 constant IC5x = 18066275441369801843299852425605757889605696860039606895304061240709132923949;
    uint256 constant IC5y = 21369967881516207539528630991576975641435211667305619698005107649262151278770;
    
    uint256 constant IC6x = 20163905644800221307376812294287642383969336478917039349411218646764132779518;
    uint256 constant IC6y = 13388574174108146565094296976637975722454599665549253563439887809377420210589;
    
    uint256 constant IC7x = 19467235620978465481013824622647317349331393053941213113304694497385471224319;
    uint256 constant IC7y = 8401384656023224562648929653031730569908827426678640765130560575690095184190;
    
    uint256 constant IC8x = 7085061092804629027913161013848962284816312890339907888213441066736111669568;
    uint256 constant IC8y = 18091058474722155391889345097305420568527422406720360367340975689993880473591;
    
    uint256 constant IC9x = 5361050287964720147260049968239755199521655273167938692325196460986154352418;
    uint256 constant IC9y = 12976164981268247895269570497517706514794777473144113112116313665254864022773;
    
    uint256 constant IC10x = 1186983119046061865029006285703568148209888603292867051265635989721133063363;
    uint256 constant IC10y = 6779909006967255282204802049300526597383455500069262437880801976751106986065;
    
    uint256 constant IC11x = 20748818430128767852818601921761669320756881393878210884682168293187327778620;
    uint256 constant IC11y = 12740639553996869352302127136414374797012674440786441028643266393687965429698;
    
    uint256 constant IC12x = 15077460561644521982002283101539684908446538453991177218684675989122754827852;
    uint256 constant IC12y = 2419161978716040687042098445133061922498427154598047396832467433867584611699;
    
    uint256 constant IC13x = 19141325126076160189121947390213992937877043472750566509076725387335902381602;
    uint256 constant IC13y = 17491252844917725905916979770504866287286268002872392088069176091129319311839;
    
    uint256 constant IC14x = 12981121537889602852392916058257086852687225408593550249394802838051942435540;
    uint256 constant IC14y = 8753804423995708472044296560546508999794805597698244822007282545868728884499;
    
    uint256 constant IC15x = 13882247359795663930298142155614712902086462724589163742941751660945198032619;
    uint256 constant IC15y = 8236102486958241904521589755417796084531677995566928659489207419966382633890;
    
    uint256 constant IC16x = 10380749578614689003890106319851908292632110527213608016842666311030021393266;
    uint256 constant IC16y = 10128170227925147230782272577680813089323629911710518109345317573898181988237;
    
    uint256 constant IC17x = 18824841182819338166654252791197315460548607219302009076004267798452320885807;
    uint256 constant IC17y = 12482512635706445255210707719295953336628984886824492744634974454230139738104;
    
    uint256 constant IC18x = 12787158610416361390318791093576925470993155250254842226616376935852163147827;
    uint256 constant IC18y = 14594211005756731282313567171481948482665804317296555330075298334947673621410;
    
    uint256 constant IC19x = 21830356149146183015992871043923816196181090895983197098870860684873837693752;
    uint256 constant IC19y = 1754062170990854561410175029138516932749018909607689559835483223915667496706;
    
    uint256 constant IC20x = 8436229865373250404121182099518286921169478659546947867933455610909738579383;
    uint256 constant IC20y = 4064044357293507993281460128868947727543301979285471033716635816524523793358;
    
    uint256 constant IC21x = 21790881657389017250474834683909584471936683413520059874218280661613627182816;
    uint256 constant IC21y = 9117377439159799878692314389035417535333093319731172527370846573842956543562;
    
    uint256 constant IC22x = 21370060127891572980902468531307127356077145278819797110671277062277437661509;
    uint256 constant IC22y = 6099377866097861802103043918780375756143445560339231050605189467822542790874;
    
    uint256 constant IC23x = 279861977005345824057068166694656363513003427497775687879159787820086948615;
    uint256 constant IC23y = 2899222672809799464880483221356138961093059191535035568964825167780770354001;
    
    uint256 constant IC24x = 9506291389011197209237050938122120130762777271982852328838355944409293974151;
    uint256 constant IC24y = 13467374762247634549033772689900588709213773253466989898713659090859393442379;
    
    uint256 constant IC25x = 608281967300690531006369380944132790642526880263520574001839251114622375336;
    uint256 constant IC25y = 3595707431380423522666373615759950396335080576064120528219879229839526695400;
    
    uint256 constant IC26x = 6258314126344401742016432007553409923887810287856939352827972891488715645052;
    uint256 constant IC26y = 2438466067718559939979504845199138273303011220209666976456911757157147541268;
    
    uint256 constant IC27x = 3117806496158436876461530558387785698172511104787185234077080994201096916595;
    uint256 constant IC27y = 11884116385916843520099061330190284743106061918933786086269030739180903126040;
    
    uint256 constant IC28x = 20044846164337723482510126391696960615253744537796463418781308959016396642158;
    uint256 constant IC28y = 11530305412298012467146480194092438564795659694820295184572334202732517300723;
    
    uint256 constant IC29x = 12249611985400161357656688262731691693398304161741274632683837185110669845080;
    uint256 constant IC29y = 19928978132370920577250041596936356168929298305475942925926042658334280407280;
    
    uint256 constant IC30x = 1715082624250494610188343103361822386309541170559908158966384441720633118415;
    uint256 constant IC30y = 6894094063488441401628301600702038778210030402345515852943432827590960424834;
    
    uint256 constant IC31x = 4075209810591981254282564974830761557298791615583594322646125215685827788130;
    uint256 constant IC31y = 13408627603449818907970466300412943524178169560252738425405315217641042763564;
    
    uint256 constant IC32x = 18584121017444237470116020687097889138163191051589061757305408766685575269893;
    uint256 constant IC32y = 14347505726424085902807712220978619150690267648683071358517745753857429676912;
    
    uint256 constant IC33x = 12148545981835954386187599777121555330395533637665482343610654198140331896141;
    uint256 constant IC33y = 20326473201376105366718760708170397598694686492198119336575257173119957280088;
    
    uint256 constant IC34x = 2939635417807519935417814208025723609904844223962413398297093499438938124531;
    uint256 constant IC34y = 7067402096649842168476252157667012663393996093412276999659324197524112204261;
    
    uint256 constant IC35x = 5511577525761137999178916681437434918253213178246536546940344651585982379900;
    uint256 constant IC35y = 4122084591293496672923210765679661501937315031198581110257192510512938734084;
    
    uint256 constant IC36x = 12842537254973881329978510297365108023662266561214402893681065354928053838036;
    uint256 constant IC36y = 7317326574252211526977407013120376815575172382977686693627682330979868872318;
    
    uint256 constant IC37x = 6144908703377277612154460297368708498556292925104492819383172547403316911063;
    uint256 constant IC37y = 19475082588878471037251775784856265033258044652246175049952645421528718190646;
    
    uint256 constant IC38x = 13393838689426785708553286954534937575076595378212489079921097638672228910567;
    uint256 constant IC38y = 12690374554698932179561904225471069442777861138887064926862967691144078690035;
    
    uint256 constant IC39x = 6943438288521684375855807175241721683092535645492982628715394857042238636284;
    uint256 constant IC39y = 2746256823695235959622858560832895205680279545692308270496746943413081431494;
    
    uint256 constant IC40x = 18426008217768975957614481909663441616680470093478958165436875915334574601681;
    uint256 constant IC40y = 6243283201228950436581683139764847859209661394319015005022622589356957037833;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[40] calldata _pubSignals) public view returns (bool) {
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
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }

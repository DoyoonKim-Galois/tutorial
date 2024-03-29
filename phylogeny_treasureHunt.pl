use strict;
use POSIX;

# 이 스트립트는 원래 영국에서 시작되었으며... 아아니 미국 해양연구소 (Marine Biology Labs, 메사추세츠 우즈홀)에서 시작하였으며 
# Stephan J Sanders 교수(캘리포니아 대학 샌프란시스코)가 신경생물학 코스에서 유닉스 강의를 하기 위해 고안되었음.
# 그 강의의 교육조교로 착취당하던 시바가 동아시아로 밀수했고, 
# 이후 이 코드는 준킴이 한글로 번역하였고, 갈로아(님들 눈앞의 수업조교)가 실험실용으로 살짝 대사를 손보았다가
# 그리고 돌고 돌아 이렇게 수업용으로까지 쓰게 되었다.
# 이 스크립트는 유닉스 기본 명령어 및 Sanders 교수의 문학 갬성을 주입, 아아니 가르치기 위해 제작되었으며, 
# 비 사업적인 용도를 위해 사용이 가능하다. 단, 한가지 조건이 있다. 그것은

# 무조건, 반드시 당신은 진짜 "보물"을 준비해야한다.

# You can describe where the treasure is 
# hidden here:

my $theTreasure = "보물을 발견했다!\n".
"보물은 바로 집에 가도 된다는 것이다. 어서 짐을 싸고 학식을 먹으러 튀어나가도록 하자.\n".
"또 항상 기억하도록 하자. 오늘날 생물학자들에게는 파이펫질과 더불어\n".
"컴퓨터는 필수가 되어가고 있다는 것을! (보물 찾기 종료. ㅅㄱ!)";

# Create locations
my @places = (
"pineTree", "largeStone", "blueHouse", "church", "pub", 
"boat", "smallStone", "bridge", "ashTree", "beach", "oakTree", 
"waterTower", "bellTower", "harbour", "ferryPort", "busStop", 
"library", "giftShop", "lab", "cafe", "bikeShop", "bikePath", 
"lake", "piratesCove", "parrotShop", "prostheticShop", 
"ophthalmologist", "rumBarrel", "sailMakers", "plankMaker", 
"swordShop", "lightHouse", "newsAgent"
);
 
my @directions = (
"eastOneStep", "eastTwoSteps", "eastThreeSteps", "eastFourSteps", "eastFiveSteps",
"southOneStep", "southTwoSteps", "southThreeSteps", "southFourSteps", "southFiveSteps",
"westOneStep", "westTwoSteps", "westThreeSteps", "westFourSteps", "westFiveSteps",
"northOneStep", "northTwoSteps", "northThreeSteps", "northFourSteps", "northFiveSteps"
);

my @directions2 = (
"eastOneStep", "eastTwoSteps", "eastThreeSteps", "eastFourSteps", "eastFiveSteps",
"southOneStep", "southTwoSteps", "southThreeSteps", "southFourSteps", "southFiveSteps",
"westOneStep", "westTwoSteps", "westThreeSteps", "westFourSteps", "westFiveSteps",
"northOneStep", "northTwoSteps", "northThreeSteps", "northFourSteps", "northFiveSteps",
"closeEyesAndWalkTowardsTheSoundOfTheWaves", "atThreeOClockFollowParallelToTheShadowFromTheFlagPole", 
"atTheSummerSolsticeDigWhereTheFirstRayOfLightMeetsThePath"
);

foreach my $dir (@places){
	mkdir $dir;
	foreach my $dir2 (@directions){
		mkdir $dir.'/'.$dir2;
		foreach my $dir3 (@directions2){
			mkdir $dir.'/'.$dir2.'/'.$dir3;
		}
	}
}

# Create output files
my $output1 = 'Clue01_S.txt';
my $OUT1 = &openOut($output1);

print $OUT1 "생명과학과 학부생의 콤퓨타 모-험\n\n".
"계통분류학 실습 수업이라는 듣보잡 수업을 들으러 가는 와중에 당신은 오래된 메모를 발견했다. 메모에는 다음과 같은 흥미로운 이야기가 적혀 있었다:\n\n".
"00년 00월 00일, 메뚜기 폴리와 나는 우리의 보물을 아무도 찾지 못할 곳에 묻어놨다! 메뚜기 폴리 말로는 관악산 인근의 장소만 해도 60,000곳이 넘기 때문에 결코 찾을 수 없을 거라고 한다.\n\n".
"안타까운 점은 일평생 곤충 표본을 만지면서 나프탈렌을 너무 흡입한 나머지, 기억력이 예전같지 않다는 점이다.. 나중에 보물 위치를 기억할 수 있을지 모르겠다.\n".
"그래서 나중에 내 보물을 다시 찾을 수 있도록, 오직 컴잘알 생물학도만이 이해할 수 있는 몇 개의 단서(Clue) 안에 이 보물의 행방을 남겨두었다.\n".
"이제 첫 번째 단서를 찾으려면 물의 탑(water tower)으로 들어가 서쪽으로 세 걸음, 남쪽으로 다섯 걸음 가서 땅을 파내라!\n".
"음? 서울대 캠퍼스 안에 물의 탑같은 게 있었던가? 수입해서 번역해온 티가 나듯이 로컬라이징이 후지군...\n".
"와작!\n".
"아뿔싸, 잠시 딴 생각을 하다가 오래된 단서가 조금 구겨져 버렸다.\n".
"늘 곤충 표본 삐뚫어진건 기가막히게 알아채면서 본인 인생 삐뚫어진건 모르고 지냈지...\n\n".
"보물을 찾는다면 이제부턴 달라질 거다. 문제를 풀기 전에 먼저, 오래된 단서들을 안전하게 담아둘 \'toteBag\' 디렉토리를 하나 만들자(mkdir).\n".
"방금 찾아낸 이 첫번째 단서를 그 디렉토리 안에 복사하고(cp), 디렉토리 안에 잘 들어갔는지 확인하자(ls).\n\n이제 물의 탑으로 출발하라!\n";

my $output2 = 'waterTower/westThreeSteps/southFiveSteps/Clue02_W.txt';
my $OUT2 = &openOut($output2);

print $OUT2 "다음 단서는 99% 에탄올 액침 표본으로 위장한... 오래된 럼주 통(rumBarrel) 근처에 숨겨두었다. 럼주 통을 기준으로 북쪽으로 두 걸음, 서쪽으로 네 걸음 가면 찾을 수 있다.\n".
"참고로 20ml 코니컬 튜브 사이에 단서를 숨겨두려다 보니 작게 쪼그라뜨리고 압축해서 집어넣어둘 수밖에 없었다.\n".
"단서를 읽으려면 gunzip을 써서 압축을 풀도록 하자.\n".
"지금 읽고 있는 이 단서를 가방(toteBag) 안에 복사(cp)해두는 것도 잊지 말 것!\n";

my $output3 = 'rumBarrel/northTwoSteps/westFourSteps/Clue03_O.txt';
my $OUT3 = &openOut($output3);

print $OUT3 "이 동네에 행동력 높은 덕후들이 많다 보니, 우리가 남긴 단서를 쫓아올까봐 메뚜기 폴리가 걱정하고 있다.\n".
"하지만 걱정하지 마라. 손은 눈보다 빠르니까. 이들을 속일 심산으로, 우린 99개의 빈 종이를 섞어두고, 딱 1개에만 단서를 적어 신문가판대(newsAgent) 안에 숨겨뒀다. 후후. 게다가 요즘 누가 신문을 읽는다고 신문가판대를 뒤져보겠나!.\n".
"신문가판대 안에서 남쪽으로 다섯 걸음, 서쪽으로 한 걸음 내딛자.\n".
"ls를 잘 사용할 줄 아는 우리만이 이 단서를 찾을 수 있을 것이다. ls의 옵션은 구글에 검색해보며 해쳐나가자. 원래 그렇게 해나가는거다! (힌트: ls -l) \n".
"단서는 새로 찾을때 마다 가방(toteBag) 안에 복사(cp)해두자\n";
`gzip $output3`;

foreach my $num (0..100){
	my $output4 = 'newsAgent/southFiveSteps/westOneStep/Clue04_R_'.$num.'.txt';
	my $OUT4 = &openOut($output4);
}

my $here = `pwd`;
$here =~ s/[\n\r]//g;
my $output4 = 'newsAgent/southFiveSteps/westOneStep/Clue04_R_78.txt';
my $OUT4 = &openOut($output4);
print $OUT4 "이런, 우리 귀여운 사슴벌레 밥(젤리)주러 가야 할 시간이다.\n".
"다행히 다음 단서가 정확히 어디에 있는지 알고 있다. cd 치고 다음 문구를 붙여넣으면 그쪽으로 단번에 갈 수 있다.\n".
$here."/harbour/westThreeSteps/northTwoSteps\n".
"지금 읽고 있는 이 단서를 가방(toteBag) 안에 복사(cp)해두는 것도 잊지 말 것!\n";

my $output5 = 'harbour/westThreeSteps/northTwoSteps/Clue05_D.txt';
my $OUT5 = &openOut($output5);

print $OUT5 "아주 예쁜 진주(Perl)가 해안(beach)에 떨어져 있다고 한다. 그 정도 크기의 진주면 졸업하고 일 안해도 먹고 살 수 있지 않을까..?\n".
"하지만 내가 선택한 생명과학과다, 악으로 깡으로 나아가자.\n".
"진주(Perl)를 줍줍하기 위해서는 해안(beach)으로 가서 동쪽으로 한 걸음, 남쪽으로 한 걸음 가면된다.\n".
"우선, 지금 이 단서를 가방(toteBag) 안에 먼저 복사(cp)해두고 출발하자!\n";

#`cp ~/scripts/Clue06.pl beach/eastOneStep/southOneStep/`;

my $output7 = 'bridge/northFiveSteps/westOneStep/Clue07_H.txt';
my $OUT7 = &openOut($output7);

print $OUT7 "진정한 컴잘알 생물학도만이 키보드 탭(Tab) 키를 이용해 파일 이름을 쉽게 완성할 수 있는 법! 이를 시험하고자 엄청나게 이름이 긴 파일을 만들었다.\n".
"탭 안 쓰고 직접 하나하나 따라 치려면 손가락 떨어질 걸? 소나무(pineTree)로 가라. 북쪽으로 다섯 걸음 향한 뒤, 깃대 그림자와 평행하게 3시 방향(3\'o clock)으로 향해라.\n".
"참, 발견해온 단서들은 가방(toteBag) 안에 제대로 복사(cp)해두고 있지? \n";
my $output8 = 'pineTree/northFiveSteps/atThreeOClockFollowParallelToTheShadowFromTheFlagPole/Clue08_O.txt';
my $OUT8 = &openOut($output8);

print $OUT8 "탭 만세! 탭이란 얼마나 소중한 버튼인가. 아이디 쓰다가 비번 넘어가는 그런 귀여운 기능의 버튼이 아니다. 탭이 없었다면 파이펫 아닌 키보드로도 관절염에 걸릴 수 있다는 걸 배우게 됐겠지.".
"그러다 갑자기 앵무새의 비명소리가 들린다. 어서 귀여운 앵무새를 구하러 가자(parrotShop). 동쪽으로 세 걸음 간 뒤, 눈을 감고 파도 소리가 들려오는 곳을 향해 걸어라.\n".
"참, 발견해온 단서들을 가방(toteBag) 안에 복사(cp)하는거 잊지 말고! \n";
my $output9 = 'parrotShop/eastThreeSteps/closeEyesAndWalkTowardsTheSoundOfTheWaves/Clue09_P.txt';
my $OUT9 = &openOut($output9);

print $OUT9 "다른 컴맹 생물학자들이 탭 안 쓰고 명령어 일일이 치고 있는 걸 보면 새벽에 티타임 갖는 걸 보는 것 만큼이나 너어어무 고통스럽다.\n".
"그러다 갑자기 등대의 불빛이 수상하게 빛난다. 등대(lightHouse)로 가서 서쪽으로 다섯 걸음, 다시 하지(summer solstice)에 최초로 비치는 빛이 만나는 지점을 향해 나아가라.\n".
"단서를 가방(toteBag) 안에 복사(cp)하는거 잊지 말고! \n";
my $output10 = 'lightHouse/westFiveSteps/atTheSummerSolsticeDigWhereTheFirstRayOfLightMeetsThePath/Clue10_5.txt';
my $OUT10 = &openOut($output10);

print $OUT10 "좋아, 지금까지 뭔가를 만드는 일을 해봤다. 이제 뭔가를 지우는 데(우리의 인생같은거?ㅋ) 얼마나 일가견 있는지 한번 살펴보자.\n".
"보철 기구 파는 가게(prostheticShop)로 가자. 북쪽으로 한 걸음, 동쪽으로 네 걸음.\n".
"단서를 가방(toteBag) 안에 복사(cp)하는거 잊지 말고! \n";
my $output11 = 'prostheticShop/northOneStep/eastFourSteps/falseClue11.txt';
my $OUT11 = &openOut($output11);
print $OUT11 "아무것도 없잖아!!! 진짜 단서에다가 펄 스크립트를 시도해보자(perl).\n";

my $output11a = 'prostheticShop/northOneStep/eastFourSteps/Clue11_N.txt';
my $OUT11a = &openOut($output11a);

print $OUT11a "다음 단서를 얻으려면 파일을 이동시키거나 이름을 바꿔야 한다. 거대한 바위(largeStone)로 향해 남쪽으로 두 걸음, 서쪽으로 네 걸음 가라.\n".
"바위 밑에는 곤충...ㅋ 이 아니라 석영(quartz) 덩어리가 보일 것이다. 그 안에 다음 단서가 있으니 읽어보도록. 이걸 가방(toteBag)에 복사하지 말고 이동(mv)시키도록 하자.\n".
"가방으로 이동하고 나면 파일 이름을 \'Clue12_5.txt\' 으로 바꿔보자(mv).\n".
"mv 명령어가 어떤건지 구글에 검색해보며 해쳐나가자. 원래 그렇게 하는거라고! \n";
`mv prostheticShop/northOneStep/eastFourSteps/Clue11_N.txt prostheticShop/southThreeSteps/westThreeSteps/Clue11_N.txt`;
#`cp ~/scripts/realClue11.pl prostheticShop/northOneStep/eastFourSteps/`;

my $output12 = 'largeStone/southTwoSteps/westFourSteps/quartz.txt';
my $OUT12 = &openOut($output12);

my $command = 'touch largeStone/southTwoSteps/westFourSteps/grey.txt largeStone/southTwoSteps/westFourSteps/purple.txt '.
'largeStone/southTwoSteps/westFourSteps/white.txt largeStone/southTwoSteps/westFourSteps/rolling.txt '.
'largeStone/southTwoSteps/westFourSteps/roses.txt largeStone/southTwoSteps/westFourSteps/mason.txt '.
'largeStone/southTwoSteps/westFourSteps/granite.txt largeStone/southTwoSteps/westFourSteps/grit.txt '.
'largeStone/southTwoSteps/westFourSteps/sedimentary.txt largeStone/southTwoSteps/westFourSteps/igneous.txt '.
'largeStone/southTwoSteps/westFourSteps/metamorphic.txt largeStone/southTwoSteps/westFourSteps/marble.txt '.
'largeStone/southTwoSteps/westFourSteps/brown.txt largeStone/southTwoSteps/westFourSteps/bladder.txt '.
'largeStone/southTwoSteps/westFourSteps/kidney.txt largeStone/southTwoSteps/westFourSteps/rosetta.txt '.
'largeStone/southTwoSteps/westFourSteps/blarney.txt largeStone/southTwoSteps/westFourSteps/head.txt '.
'largeStone/southTwoSteps/westFourSteps/sand.txt largeStone/southTwoSteps/westFourSteps/lime.txt ';
`$command`;

print $OUT12 "다음 단서는 파일 시작 부분이 아니라 가장 끝 부분에서 확인할 수 있다(tail). 파일도 아주 기이이이일게 만들어뒀다.\n".
"자전거 길(bikePath)로 가자. 남쪽으로 세 걸음, 동쪽으로 한 걸음.\n";

my $output13 = 'bikePath/southThreeSteps/eastOneStep/Clue13_W.txt';
my $OUT13 = &openOut($output13);

print $OUT13 "여긴 아무것도 없다. tail 을 시도해보자.\n";
foreach my $num (1..5000){
	print $OUT13 "\n";
}

print $OUT13 "훌륭해! 이제 이 단서를 가방에 복사하고, 가방 디렉토리로 이동해 단서 파일들 이름의 마지막 문자를 살펴보자.\n";

my $output14 = 'swordShop/northFiveSteps/westFiveSteps/xMarksTheSpot.txt';
my $OUT14 = &openOut($output14);

print $OUT14 "\'SHIN\'이라는 글자가 커다랗게 새겨진 오래된 나무 상자를 발견했다.\n".
"상자 앞에는 \'폴리는 답을 알고 있다.\'라는 문장이 적힌 번호 자물쇠가 달려있다.\n".
"이 파일에서 polly 라는 문자열을 검색하고(grep), 확인한 숫자를 \'key.txt\' 파일에 적어두자(nano 또는 vi 등).\n".
"그 뒤 \'openLock.pl\' perl 스크립트를 실행하자.\n";

my @let = ('a'..'z');
foreach my $num (0..562){
	my $twoDig = ceil(rand(100));
	my $letThree = $let[rand(26)];
	my $letFour = $let[rand(26)];
	my $letFive = $let[rand(26)];
	print $OUT14 "po".$letThree.$letFour.$letFive."\t$twoDig\n" unless ($letThree.$letFour.$letFive eq 'polly');
}
print $OUT14 "polly\t42\n";
foreach my $num (0..324){
	my $twoDig = ceil(rand(100));
	my $letThree = $let[rand(26)];
	my $letFour = $let[rand(26)];
	my $letFive = $let[rand(26)];
	print $OUT14 "po".$letThree.$letFour.$letFive."\t$twoDig\n" unless ($letThree.$letFour.$letFive eq 'polly');
}

my $command14 = 'touch swordShop/northFiveSteps/westFiveSteps/key.txt';
`$command14`;


#my $output15 = 'swordShop/northFiveSteps/westFiveSteps/Treasure.txt';
#my $OUT15 = &openOut($output15);

#print $OUT15 "You've found my treasure! Quietly stand up, head out of the classroom, and look for a plate in the office opposite\n";


###### write the perl scripts #####

# Script 1
my $outputPerl1 = 'beach/eastOneStep/southOneStep/Clue06.pl';
my $OUTP1 = &openOut($outputPerl1);

print $OUTP1 'use strict;'."\n\n";
print $OUTP1 '# 이건 컴퓨터 명령어가 포함된 짧은 프로그램인 perl 파일이다. 다음 명령어를 입력해서 실행시킬 수 있다:'."\n".'# perl Clue06.pl'."\n\n";
print $OUTP1 '&out;'."\n\n".'my @num = ('."\n";
foreach my $num (0..943){
	print $OUTP1 "\n".$num.",\n\n\n\n";
}
print $OUTP1 ');'."\n\n".'sub out {'."\n".'print "이거 정말이지 예쁜 진주(perl)로군! 잘만 팔면....평생...놀며 먹고 살....수....있겠어...! 계속하기 전에 이 내용을 기록해두는 게 좋겠다.\n'.
'지금 화면에 뜬 이 내용을 복사하고, 메모장(Nano)를 열어서, Clue06_S.txt 라는 이름으로 저장해서 기록해두자!\n'.
'그 뒤에 Clue06_S.txt를 단서를 가방(toteBag)에 복사해서 넣어두자.\n'.
'모두 정리되면 다리(bridge)로 가서 북쪽으로 다섯 걸음, 서쪽으로 한 걸음 이동하자.\n";'."\n".'}'."\n\n";
print $OUTP1 'my @num = ('."\n";
foreach my $num (0..678){
	print $OUTP1 "\n".$num.",\n\n\n\n";
}
print $OUTP1 ');'."\n";
close $OUTP1;

# Script 2
my $outputPerl2 = 'prostheticShop/northOneStep/eastFourSteps/realClue11.pl';
my $OUTP2 = &openOut($outputPerl2);

print $OUTP2 'use strict;'."\n\n";
print $OUTP2 'my @files = split /\n/, `ls`;'."\n\n";
print $OUTP2 'my $mark = 0;'."\n".'foreach my $file (@files){'."\n";
print $OUTP2 "\t".'$mark = 1 if ($file eq \'falseClue11.txt\');'."\n".'}'."\n\n";
print $OUTP2 'if ($mark == 0) {'."\n";
print $OUTP2 "\t".'`cp '.$here.'/prostheticShop/southThreeSteps/westThreeSteps/Clue11_N.txt ../../../toteBag/`;'."\n";
print $OUTP2 "\t".'print "아이고, 이걸 지워버리다니! 뭔 생각인가 대체? 빠르게 휴지통으로 가서 다시 살려내라!\n";'."\n";
print $OUTP2 "\t".'sleep 3;'."\n";
print $OUTP2 "\t".'print "장난이다 키킼. 이미 그 파일은 아예 완전히 사라졌다. 리눅스에서 뭔가를 삭제한다면 진짜 그냥 사라진다.\n'.
'휴지통에서 복구하거나 취소하는 것 따위는 불가능하다. rm -rf 같은 거 잘못 건들면 진짜 망한다!\n";'."\n";
print $OUTP2 "\t".'print "진짜 단서 11은 이미 네 가방(toteBag)안에 몰래 넣어두었다. 확인해보도록!\n";'."\n";
print $OUTP2 '} else {'."\n";
print $OUTP2 "\t".'print "잘못된 단서(false clue)를 제거하고(rm) 다시 시도하자,\n";'."\n".'}'."\n";
close $OUTP2;

# Script 3
my $outputPerl3 = 'swordShop/northFiveSteps/westFiveSteps/openLock.pl';
my $OUTP3 = &openOut($outputPerl3);
print $OUTP3 '# Try xMarks the spot'."\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
print $OUTP3 'use strict;'."\n\n";
print $OUTP3 'open IN, "key.txt" or die "could not find key.txt: $!\n";'."\n";
print $OUTP3 'my @in = <IN>;'."\n".'if ($in[0] =~ /42/){'."\n";
print $OUTP3 "\t".'open OUT, \'>\', "openTheBox.txt" or die "could not open openTheBox.txt: $!\n";'."\n";
$theTreasure =~ s/\'/\\\'/g;
print $OUTP3 "\t".'print OUT "'.$theTreasure.'\n";'."\n";
print $OUTP3 "\t".'print "철컥, 자물쇠가 풀렸다. 이제 상자를 열어보자(ls).\n";'."\n";
print $OUTP3 '} else {'."\n\t".'print "잘못된 비밀번호란다.\n";'."\n".'}';
close $OUTP3;

# Opens an output file
sub openOut {
	my ($file) = @_;
	open my $OUT, '>', $file or die "Could not open file $file: $!\n";
	return ($OUT);
}



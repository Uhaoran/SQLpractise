--���25�F�S�I��̈ȉ��̃f�[�^�𒊏o���Ă��������B
SELECT
    uniform_num
    , name
    , club 
FROM
    players; 

--���26�F�O���[�vC�ɏ������鍑�����ׂĒ��o���Ă��������B
SELECT
    * 
FROM
    countries 
WHERE
    group_name = 'C'; 

--���27�F�O���[�vC�ȊO�ɏ������鍑�����ׂĒ��o���Ă��������B
--���邢��"<>"�g��,�������ȊO�̃f�[�^���ׂĎ��o��
SELECT
    * 
FROM
    countries 
WHERE
    group_name != 'C'; 

--���28�F2016�N1��13�����݂�40�Έȏ�̑I��𒊏o���Ă��������B�i�a�����̐l���܂߂Ă��������B)
SELECT
    * 
FROM
    players 
WHERE
    birth <= '1976/1/13'; 

--���29�F�g����170cm�����̑I��𒊏o���Ă��������B
SELECT
    * 
FROM
    players 
WHERE
    height < '170'; 

--���30�FFIFA�����N�����{�i46�ʁj�̑O��10�ʂɊY�����鍑�i36�ʁ`56�ʁj�𒊏o���Ă��������B
--�������ABETWEEN���p���Ă��������B
SELECT
    * 
FROM
    countries 
WHERE
    ranking BETWEEN '36' AND '56'; 

--���31�F�I��̃|�W�V������GK�ADF�AMF�ɊY������I������ׂĒ��o���Ă��������B
--�������AIN���p���Ă��������B
--OR�̏ꍇ
SELECT
    * 
FROM
    players 
WHERE
    position = 'GK' 
    OR position = 'DF' 
    OR position = 'MF'; 

--IN�̏ꍇ
SELECT
    * 
FROM
    players 
WHERE
    position IN ('GK', 'DF', 'MF'); 

--���32�F�I�E���S�[���ƂȂ����S�[���𒊏o���Ă��������B
--goals�e�[�u����player_id�J������NULL���i�[����Ă���f�[�^���I�E���S�[����\���Ă��܂��B
SELECT
    * 
FROM
    goals 
WHERE
    player_id IS NULL; 

--���33�F�I�E���S�[���ȊO�̃S�[���𒊏o���Ă��������B
--goals�e�[�u����player_id�J������NULL���i�[����Ă���f�[�^���I�E���S�[����\���Ă��܂��B
SELECT
    * 
FROM
    goals 
WHERE
    player_id IS NOT NULL; 

--���34�F���O�̖������u�j���v�ŏI���v���C���[�𒊏o���Ă��������B
SELECT
    * 
FROM
    players 
WHERE
    name LIKE '%�j��'; 

--���35�F���O�̒��Ɂu�j���v���܂܂��v���C���[�𒊏o���Ă��������B
SELECT
    * 
FROM
    players 
WHERE
    name LIKE '%�j��%'; 

--���36�F�O���[�vA�ȊO�ɏ������鍑�����ׂĒ��o���Ă��������B
--�������A�u!=�v��u<>�v���g�킸�ɁA�uNOT�v���g�p���Ă��������B
SELECT
    * 
FROM
    countries 
WHERE
    NOT group_name = 'A'; 

--���37�F�S�I��̒���BMI�l��20��̑I��𒊏o���Ă��������B
--BMI�͈ȉ��̎��ŋ��߂邱�Ƃ��ł��܂��B
--�v�Z�����ɒ��ځA�����_�ȉ������Ă͂����Ȃ�
--weight / POW(height / 100, 2)
SELECT
    * 
FROM
    players 
WHERE
    weight / POW(height / 100.00, 2) >= 20 
    AND weight / POW(height / 100.00, 2) < 21; 

--���38�F�S�I��̒����珬���ȑI��i�g����165cm�������A�̏d��60kg�����j�𒊏o���Ă��������B
SELECT
    * 
FROM
    players 
WHERE
    height < 165 
    OR weight < 60; 

--���39�FFW��MF�̒���170�����̑I��𒊏o���Ă��������B�������AOR��AND���g�p���Ă��������B
--AND��OR�̗D�揇�ʂ𖾊m�ɂ��邱��
SELECT
    * 
FROM
    players 
WHERE
    (position = 'FW' OR position = 'MF') 
    AND height < 170; 

--���40�F�|�W�V�����̈ꗗ���d���Ȃ��ŕ\�����Ă��������B�O���[�v���͎g�p���Ȃ��ł��������B
SELECT DISTINCT
    position 
FROM
    players; 

--���41�F�S�I��̐g���Ƒ̏d�𑫂����l��\�����Ă��������B
--���킹�đI��̖��O�A�I��̏����N���u���\�����Ă��������B
SELECT
    name
    , club
    , height + weight 
FROM
    players; 

--���42�F�I�薼�ƃ|�W�V�������ȉ��̌`���ŏo�͂��Ă��������B�V���O���N�H�[�g�ɒ��ӂ��Ă��������B
--�u�W�����I�Z�U�[���I��̃|�W�V�����́fGK�f�ł��v
SELECT
    CONCAT(name, '�I��̃|�W�V������\n'',position,' \ n'�ł�') 
FROM
    players; 

--���43�F�S�I��̐g���Ƒ̏d�𑫂����l���J�������u�̗͎w���v�Ƃ��ĕ\�����Ă��������B
--���킹�đI��̖��O�A�I��̏����N���u���\�����Ă��������B
SELECT
    name
    , club
    , height + weight AS �̗͎w�� 
FROM
    players; 

--���44�FFIFA�����N�̍��������珇�ɂ��ׂĂ̍�����\�����Ă��������B
SELECT
    * 
FROM
    countries 
ORDER BY
    ranking ASC; 

--���45�F�S�Ă̑I���N��̒Ⴂ���ɕ\�����Ă��������B
--�Ȃ��A�N����v�Z����K�v�͂���܂���B
SELECT
    * 
FROM
    players 
ORDER BY
    birth DESC; 

--���46�F�S�Ă̑I���g���̑傫�����ɕ\�����Ă��������B
--�����g���̑I��͑̏d�̏d�����ɕ\�����Ă��������B
SELECT
    * 
FROM
    players 
ORDER BY
    height DESC
    , weight DESC; 

--���47�F�S�Ă̑I��̃|�W�V������1�����ځiGK�ł����G�AFW�ł����F�j���o�͂��Ă��������B
SELECT
    id
    , country_id
    , uniform_num
    , SUBSTRING(position, 1, 1)
    , name
    , club
    , birth
    , height
    , weight 
FROM
    players; 

--���48�F�o�ꍑ�̍������������̂��珇�ɏo�͂��Ă��������B
SELECT
    name
    , LENGTH(name) 
FROM
    countries 
ORDER BY
    LENGTH(name) DESC; 

--���49�F�S�I��̒a�������u2017�N04��30���v�̃t�H�[�}�b�g�ŏo�͂��Ă��������B
--postgreSQL format�֐��̉^�p
SELECT
    name
    , to_char(birth, 'yyyy�Nmm��dd��') AS birth 
FROM
    players; 

--���50�F�S�ẴS�[�������o�͂��Ă��������B
--�������A�I�E���S�[���iplayer_id��NULL�̃f�[�^�j��IFNULL�֐����g�p����player_id���u9999�v�ƕ\�����Ă��������B
SELECT
    COALESCEL(NULL, 9999) 
FROM
    goals; 

--���51�F�S�ẴS�[�������o�͂��Ă��������B
--�������A�I�E���S�[���iplayer_id��NULL�̃f�[�^�j��IFNULL�֐����g�p����player_id���u9999�v�ƕ\�����Ă��������B
SELECT
    CASE 
        WHEN player_id IS NULL 
            THEN 9999 
        ELSE player_id 
        END
    , goal_time 
FROM
    goals 
ORDER BY
    player_id DESC; 

--���52�F�S�Ă̑I��̕��ϐg���A���ϑ̏d��\�����Ă��������B
SELECT
    AVG(height) AS ���ϐg��
    , AVG(weight) AS ���ϑ̏d 
FROM
    players; 

--���53�F���{�̑I��iplayer_id��714����736�j���グ���S�[������\�����Ă��������B
SELECT
    COUNT(player_id) AS ���{�̃S�[���� 
WHERE
    player_id BETWEEN 714 AND 736; 

--���54�F�I�E���S�[���iplayer_id��NULL�j�ȊO�̑��S�[������\�����Ă��������B�������AWHERE��͎g�p���Ȃ��ł��������B
SELECT
    COUNT(player_id) AS �I�E���S�[���ȊO 
FROM
    goals; 

--���55�F�S�Ă̑I��̒��ōł������g���ƁA�ł��d���̏d��\�����Ă��������B
SELECT
    MAX(height) AS �ő�g��
    , MAX(weight) AS �ő�̏d 
FROM
    players; 

--���56�FA�O���[�v��FIFA�����N�ŏ�ʂ�\�����Ă��������B
--where��from�̑O�㏇�ɒ���
SELECT
    MIN(ranking) 
FROM
    countries 
WHERE
    group_name = 'A'; 

--���57�FC�O���[�v��FIFA�����N�̍��v�l��\�����Ă��������B
SELECT
    SUM(ranking) AS C�O���[�v��FIFA�����N�̍��v 
FROM
    countries 
WHERE
    group_name = 'C'; 

--���58�F�S�Ă̑I��̏������Ɩ��O�A�w�ԍ���\�����Ă��������B
SELECT
    c.name
    , p.name
    , p.uniform_num 
FROM
    players p JOIN countries c 
        ON c.id = p.country_id; 

--���59�F�S�Ă̎����̍����ƑI�薼�A���_���Ԃ�\�����Ă��������B
--�I�E���S�[���iplayer_id��NULL�j�͕\�����Ȃ��ł��������B
SELECT
    c.name
    , p.name
    , g.goal_time 
FROM
    goals g JOIN players p 
        ON p.id = g.player_id JOIN countries c 
        ON c.id = p.country_id; 

--���60�F�S�Ă̎����̃S�[�����ԂƑI�薼��\�����Ă��������B
--�����O���������g�p���ăI�E���S�[���iplayer_id��NULL�j���\�����Ă�������
SELECT
    g.goal_time
    , p.uniform_num
    , p.position
    , p.name 
FROM
    goals g 
    LEFT JOIN players p 
        ON p.id = g.player_id; 

--���61�F�S�Ă̎����̃S�[�����ԂƑI�薼��\�����Ă��������B
--�E���O���������g�p���ăI�E���S�[���iplayer_id��NULL�j���\�����Ă��������B
SELECT
    g.goal_time
    , p.uniform_num
    , p.position
    , p.name 
FROM
    goals g 
    RIGHT JOIN players p 
        ON p.id = g.player_id; 

--���62�F�S�Ă̎����̃S�[�����ԂƑI�薼�A������\�����Ă��������B
--�܂��A�I�E���S�[���iplayer_id��NULL�j���\�����Ă��������B
SELECT
    c.name
    , g.goal_time
    , p.position
    , p.name 
FROM
    goals g 
    LEFT JOIN players p 
        ON p.id = g.player_id 
    LEFT JOIN countries c 
        ON c.id = p.country_id; 

--���63�F�S�Ă̎����̃L�b�N�I�t���ԂƑΐ퍑�̍�����\�����Ă��������B
SELECT
    p.kickoff
    , mc.name AS my_country
    , ec.name AS enemy_country 
FROM
    pairings p JOIN countries mc 
        ON mc.id = p.my_country_id JOIN countries ec 
        ON ec.id = p.enemy_country_id; 

--���64�F�S�ẴS�[�����ԂƓ��_���グ���v���C���[����\�����Ă��������B
--�I�E���S�[���͕\�����Ȃ��ł��������B�������A�����͎g�킸�ɕ��⍇����p���Ă��������B
SELECT
    g.id
    , g.goal_time
    , ( 
        SELECT
            p.name 
        FROM
            players p 
        WHERE
            p.id = g.player_id
    ) AS player_name 
FROM
    goals g 
WHERE
    g.player_id IS NOT NULL; 

--���65�F�S�ẴS�[�����ԂƓ��_���グ���v���C���[����\�����Ă��������B
--�I�E���S�[���͕\�����Ȃ��ł��������B�������A���⍇���͎g�킸�ɁA������p���Ă��������B
SELECT
    g.id
    , g.goal_time
    , p.name 
FROM
    goals g JOIN players p 
        ON p.id = g.player_id; 

--���66�F�e�|�W�V�������ƁiGK�AFW�Ȃǁj�ɍł��g���ƁA���̑I�薼�A�����N���u��\�����Ă��������B
--�������AFROM��ɕ��⍇�����g�p���Ă��������B
SELECT
    p.position
    , p.height AS �ő�g��
    , p.name
    , p.club 
FROM
    players 
group by
    position) p desc 
    LEFT JOIN players p 
        ON p.height =                           --���67�F�e�|�W�V�������ƁiGK�AFW�Ȃǁj�ɍł��g���ƁA���̑I�薼��\�����Ă��������B
        --�������ASELECT��ɕ��⍇�����g�p���Ă�������
        --���68�F�S�I��̕��ϐg�����Ⴂ�I������ׂĒ��o���Ă��������B
        --�\�������́A�w�ԍ��A�|�W�V�����A���O�A�g���Ƃ��Ă��������B
        SELECT
    uniform_num
    , position
    , name
    , height 
FROM
    players 
WHERE
    height < (SELECT AVG(height) FROM players); 

--���69�F�e�O���[�v�̍ŏ�ʂƍŉ��ʂ�\�����A���̍���50���傫���O���[�v�𒊏o���Ă��������B
SELECT
    group_name
    , MAX(ranking)
    , MIN(ranking) 
FROM
    countries 
GROUP BY
    group_name 
HAVING
    MAX(ranking) - MIN(ranking) > 50; 

--���70�F1980�N���܂�ƁA1981�N���܂�̑I�肪���l���邩���ׂĂ��������B
--�������A���t�֐��͎g�p�����AUNION����g�p���Ă��������B
--union �d������s�͍폜����
SELECT
    1980 AS �a���N
    , count(id) 
FROM
    players 
WHERE
    birth BETWEEN '1980-1-1' AND '1980-12-31' 
UNION 
SELECT
    1981 AS �a���N
    , count(id) 
FROM
    players 
WHERE
    birth BETWEEN '1981-1-1' AND '1981-12-31'; 

--���71�F�g����195�p���傫�����A�̏d��95kg���傫���I��𒊏o���Ă��������B
--�������A�ȉ��̉摜�̂悤�ɁA�ǂ���̏����ɂ����v����ꍇ�ɂ�2�����̃f�[�^�Ƃ��Ē��o���Ă��������B
--�܂��A���ʂ�id�̏����Ƃ��Ă��������B
--union all �d�������s�폜���Ȃ�
SELECT
    id
    , position
    , name
    , height
    , weight 
FROM
    players 
WHERE
    height > 195 
UNION ALL 
SELECT
    id
    , position
    , name
    , height
    , weight 
FROM
    players 
WHERE
    weight > 95 
ORDER BY
    id; 

--View�ɂ��Đ���
--����܂ł̋L���ŗl�X��SQL��������Ă��܂������A
--���ɂ̓T�u�N�G���̂悤�ȕ��G��SQL��������܂����B
--�p�ɂɎg�p����e�[�u������f�[�^�𒊏o���鎞�ɖ��񕡎G��
--SQL�����쐬���Ď��s����͎̂�Ԃ��|����܂����A���̓~�X����\��������܂��B
--View�𗘗p����Ɗy�ɂȂ�(�f�[�^���o�̊ȗ���,�Z�L�����e�B���̌���)
--SQL�ŗ��p�����View�͎��e�[�u������쐬�����u���z�I�ȃe�[�u���v���ƍl���Ă��������B
--�Ǘ��҂��K�v�ȃf�[�^�����𔲐�������A
--�e�e�[�u������f�[�^���Q�Ƃ��₷���悤�ɉ��H����View���쐬���邱�Ƃ��ł��܂��B
--View�͂����܂ł����z�e�[�u���Ȃ̂ŁA���̒��Ƀf�[�^�͑��݂��܂��񂪁A
--�Ǘ��҂���̓e�[�u�����������̂Ɠ����悤�Ȋ��o�ŎQ�Ƃ��邱�Ƃ��ł��܂��B
--View�ɂ̓f�[�^�����݂��Ȃ��Ɛ������܂������AView�̎��Ԃ�SELECT���ł��B
--View�ɃA�N�Z�X����ہA��`����SELECT�������s����A
--���o�����f�[�^���Q�Ƃ��邱�Ƃŉ��z�e�[�u���̂悤�Ɉ������Ƃ��ł���̂ł��B
--View���쐬����ɂ͈ȉ��̂悤�ɁuCREATE VIEW���v���g�p���܂��B
--CREATE VIEW �r���[�� AS ��` [WITH CHECK OPTION];
--��)   CREATE VIEW teachers_view AS
--      SELECT teacher_id,name, class_id FROM teachers;
--View�̎Q��
--�쐬����View�̎Q�ƕ��@�ł����A�ʏ�̃e�[�u�����Q�Ƃ��鎞�Ɠ����悤�ɁuSELECT���v�𗘗p���܂��B
--SELECT �J������,(�J������,�c) FROM �r���[��;
--�͎����V���[�Y
--���1�F�e�O���[�v�̒���FIFA�����N���ł��������ƒႢ���̃����L���O�ԍ���\�����Ă��������B
SELECT
    group_name AS �O���[�v
    , MIN(ranking) AS �����L���O�ŏ��
    , MAX(ranking) AS �����L���O�ŉ��� 
FROM
    countries 
GROUP BY
    group_name 
ORDER BY
    MIN(ranking) ASC; 

--���2�F�S�S�[���L�[�p�[�̕��ϐg���A���ϑ̏d��\�����Ă�������
SELECT
    AVG(height) AS ���ϐg��
    , AVG(weight) AS ���ϑ̏d 
FROM
    players 
WHERE
    position = 'GK'; 

--���3�F�e���̕��ϐg�������������珇�ɕ\�����Ă��������B
--�������AFROM���countries�e�[�u���Ƃ��Ă��������B
SELECT
    c.name AS ����
    , AVG(p.height) AS ���ϐg�� 
FROM
    countries c JOIN players p 
        ON c.id = p.country_id 
GROUP BY
    c.name 
ORDER BY
    AVG(p.height) DESC; 

--���4�F�e���̕��ϐg�������������珇�ɕ\�����Ă��������B
--�������AFROM���players�e�[�u���Ƃ��āA�e�[�u���������g�킸���⍇����p���Ă��������B
SELECT
    ( 
        SELECT
            c.name 
        FROM
            countries c 
        WHERE
            c.id = p.country_id
    ) AS ����
    , AVG(p.height) AS ���ϐg�� 
FROM
    players p 
GROUP BY
    p.country_id 
ORDER BY
    AVG(p.height) DESC; 

--���5�F�L�b�N�I�t�����Ƒΐ퍑�̍������L�b�N�I�t�����̑������̂��珇�ɕ\�����Ă��������B
--�v�����̏d�����Ă͂����Ȃ�����
SELECT
    p.kickoff AS �L�b�N�I�t����
    , c1.name AS ����1
    , c2.name AS ����2 
FROM
    pairings p JOIN countries c1 
        ON c1.id = p.my_country_id JOIN countries c2 
        ON c2.id = p.enemy_country_id 
ORDER BY
    p.kickoff ASC; 

--���6�F���ׂĂ̑I���ΏۂƂ��đI�育�Ƃ̓��_�����L���O��\�����Ă��������B
--�iSELECT��ŕ��⍇�����g�����Ɓj
SELECT
    p.name AS ���O
    , p.positon AS �|�W�V����
    , p.club AS �����N���u( 
        SELECT
            COUNT(g.goal_time) 
        FROM
            goals g 
        WHERE
            p.id = g.player_id
    ) AS �S�[���� 
FROM
    players p 
ORDER BY
    COUNT(g.goal_time) DESC; 

--���7�F���ׂĂ̑I���ΏۂƂ��đI�育�Ƃ̓��_�����L���O��\�����Ă��������B�i�e�[�u���������g�����Ɓj
SELECT
    p.name AS ���O
    , p.position AS �|�W�V����
    , p.club AS �����O���u
    , COUNT(g.player_id) AS �S�[���� 
FROM
    goals g JOIN players p 
        ON p.id = g.player_id 
GROUP BY
    p.name
    , p.position
    , p.club
    , g.player_id 
ORDER BY
    �S�[���� DESC; 

--���8�F�e�|�W�V�������Ƃ̑����_��\�����Ă��������B
SELECT
    p.position AS �|�W�V����
    , COUNT(g.player_id) AS �S�[���� 
FROM
    players p 
    LEFT JOIN goals g 
        ON p.id = g.player_id 
GROUP BY
    p.position 
ORDER BY
    �S�[���� DESC; 

--���9�F���[���h�J�b�v�J�Ó����i2014-06-13�j�̔N����v���C���[���ɕ\������B
--�\�����ځF�a�����A�N��A���O�A�|�W�V����
--�\�����F�N��̍~��
SELECT
    birth
    age(current_date,'1979-09-02'),
	date_part('year',age(current_date,'1979-09-02'))
    , name
    , position 
FROM
    players 
ORDER BY
    age DESC;
--���10�F�I�E���S�[���̉񐔂�\������
SELECT COUNT(goal_time) 
FROM goals
WHERE player_id is NULL;

--���11�F�e�O���[�v���Ƃ̑����_����\�����ĉ������B
SELECT c.group_name,COUNT(g.id)
FROM goals g
LEFT JOIN pairings p ON p.id=g.pairing_id
LEFT JOIN countries c ON c.id=p.my_country_id
WHERE p.kickoff BETWEEN '2014-6-13' AND '2014-6-27'
GROUP BY c.group_name ;


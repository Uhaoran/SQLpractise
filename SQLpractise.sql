--問題25：全選手の以下のデータを抽出してください。
SELECT
    uniform_num
    , name
    , club 
FROM
    players; 

--問題26：グループCに所属する国をすべて抽出してください。
SELECT
    * 
FROM
    countries 
WHERE
    group_name = 'C'; 

--問題27：グループC以外に所属する国をすべて抽出してください。
--あるいは"<>"使う,条件式以外のデータすべて取り出す
SELECT
    * 
FROM
    countries 
WHERE
    group_name != 'C'; 

--問題28：2016年1月13日現在で40歳以上の選手を抽出してください。（誕生日の人を含めてください。)
SELECT
    * 
FROM
    players 
WHERE
    birth <= '1976/1/13'; 

--問題29：身長が170cm未満の選手を抽出してください。
SELECT
    * 
FROM
    players 
WHERE
    height < '170'; 

--問題30：FIFAランクが日本（46位）の前後10位に該当する国（36位～56位）を抽出してください。
--ただし、BETWEEN句を用いてください。
SELECT
    * 
FROM
    countries 
WHERE
    ranking BETWEEN '36' AND '56'; 

--問題31：選手のポジションがGK、DF、MFに該当する選手をすべて抽出してください。
--ただし、IN句を用いてください。
--ORの場合
SELECT
    * 
FROM
    players 
WHERE
    position = 'GK' 
    OR position = 'DF' 
    OR position = 'MF'; 

--INの場合
SELECT
    * 
FROM
    players 
WHERE
    position IN ('GK', 'DF', 'MF'); 

--問題32：オウンゴールとなったゴールを抽出してください。
--goalsテーブルのplayer_idカラムにNULLが格納されているデータがオウンゴールを表しています。
SELECT
    * 
FROM
    goals 
WHERE
    player_id IS NULL; 

--問題33：オウンゴール以外のゴールを抽出してください。
--goalsテーブルのplayer_idカラムにNULLが格納されているデータがオウンゴールを表しています。
SELECT
    * 
FROM
    goals 
WHERE
    player_id IS NOT NULL; 

--問題34：名前の末尾が「ニョ」で終わるプレイヤーを抽出してください。
SELECT
    * 
FROM
    players 
WHERE
    name LIKE '%ニョ'; 

--問題35：名前の中に「ニョ」が含まれるプレイヤーを抽出してください。
SELECT
    * 
FROM
    players 
WHERE
    name LIKE '%ニョ%'; 

--問題36：グループA以外に所属する国をすべて抽出してください。
--ただし、「!=」や「<>」を使わずに、「NOT」を使用してください。
SELECT
    * 
FROM
    countries 
WHERE
    NOT group_name = 'A'; 

--問題37：全選手の中でBMI値が20台の選手を抽出してください。
--BMIは以下の式で求めることができます。
--計算処理に注目、小数点以下略してはいけない
--weight / POW(height / 100, 2)
SELECT
    * 
FROM
    players 
WHERE
    weight / POW(height / 100.00, 2) >= 20 
    AND weight / POW(height / 100.00, 2) < 21; 

--問題38：全選手の中から小柄な選手（身長が165cm未満か、体重が60kg未満）を抽出してください。
SELECT
    * 
FROM
    players 
WHERE
    height < 165 
    OR weight < 60; 

--問題39：FWかMFの中で170未満の選手を抽出してください。ただし、ORとANDを使用してください。
--ANDとORの優先順位を明確にすること
SELECT
    * 
FROM
    players 
WHERE
    (position = 'FW' OR position = 'MF') 
    AND height < 170; 

--問題40：ポジションの一覧を重複なしで表示してください。グループ化は使用しないでください。
SELECT DISTINCT
    position 
FROM
    players; 

--問題41：全選手の身長と体重を足した値を表示してください。
--合わせて選手の名前、選手の所属クラブも表示してください。
SELECT
    name
    , club
    , height + weight 
FROM
    players; 

--問題42：選手名とポジションを以下の形式で出力してください。シングルクォートに注意してください。
--「ジュリオセザール選手のポジションは’GK’です」
SELECT
    CONCAT(name, '選手のポジションは\n'',position,' \ n'です') 
FROM
    players; 

--問題43：全選手の身長と体重を足した値をカラム名「体力指数」として表示してください。
--合わせて選手の名前、選手の所属クラブも表示してください。
SELECT
    name
    , club
    , height + weight AS 体力指数 
FROM
    players; 

--問題44：FIFAランクの高い国から順にすべての国名を表示してください。
SELECT
    * 
FROM
    countries 
ORDER BY
    ranking ASC; 

--問題45：全ての選手を年齢の低い順に表示してください。
--なお、年齢を計算する必要はありません。
SELECT
    * 
FROM
    players 
ORDER BY
    birth DESC; 

--問題46：全ての選手を身長の大きい順に表示してください。
--同じ身長の選手は体重の重い順に表示してください。
SELECT
    * 
FROM
    players 
ORDER BY
    height DESC
    , weight DESC; 

--問題47：全ての選手のポジションの1文字目（GKであればG、FWであればF）を出力してください。
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

--問題48：出場国の国名が長いものから順に出力してください。
SELECT
    name
    , LENGTH(name) 
FROM
    countries 
ORDER BY
    LENGTH(name) DESC; 

--問題49：全選手の誕生日を「2017年04月30日」のフォーマットで出力してください。
--postgreSQL format関数の運用
SELECT
    name
    , to_char(birth, 'yyyy年mm月dd日') AS birth 
FROM
    players; 

--問題50：全てのゴール情報を出力してください。
--ただし、オウンゴール（player_idがNULLのデータ）はIFNULL関数を使用してplayer_idを「9999」と表示してください。
SELECT
    COALESCEL(NULL, 9999) 
FROM
    goals; 

--問題51：全てのゴール情報を出力してください。
--ただし、オウンゴール（player_idがNULLのデータ）はIFNULL関数を使用してplayer_idを「9999」と表示してください。
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

--問題52：全ての選手の平均身長、平均体重を表示してください。
SELECT
    AVG(height) AS 平均身長
    , AVG(weight) AS 平均体重 
FROM
    players; 

--問題53：日本の選手（player_idが714から736）が上げたゴール数を表示してください。
SELECT
    COUNT(player_id) AS 日本のゴール数 
WHERE
    player_id BETWEEN 714 AND 736; 

--問題54：オウンゴール（player_idがNULL）以外の総ゴール数を表示してください。ただし、WHERE句は使用しないでください。
SELECT
    COUNT(player_id) AS オウンゴール以外 
FROM
    goals; 

--問題55：全ての選手の中で最も高い身長と、最も重い体重を表示してください。
SELECT
    MAX(height) AS 最大身長
    , MAX(weight) AS 最大体重 
FROM
    players; 

--問題56：AグループのFIFAランク最上位を表示してください。
--whereとfromの前後順に注意
SELECT
    MIN(ranking) 
FROM
    countries 
WHERE
    group_name = 'A'; 

--問題57：CグループのFIFAランクの合計値を表示してください。
SELECT
    SUM(ranking) AS CグループのFIFAランクの合計 
FROM
    countries 
WHERE
    group_name = 'C'; 

--問題58：全ての選手の所属国と名前、背番号を表示してください。
SELECT
    c.name
    , p.name
    , p.uniform_num 
FROM
    players p JOIN countries c 
        ON c.id = p.country_id; 

--問題59：全ての試合の国名と選手名、得点時間を表示してください。
--オウンゴール（player_idがNULL）は表示しないでください。
SELECT
    c.name
    , p.name
    , g.goal_time 
FROM
    goals g JOIN players p 
        ON p.id = g.player_id JOIN countries c 
        ON c.id = p.country_id; 

--問題60：全ての試合のゴール時間と選手名を表示してください。
--左側外部結合を使用してオウンゴール（player_idがNULL）も表示してください
SELECT
    g.goal_time
    , p.uniform_num
    , p.position
    , p.name 
FROM
    goals g 
    LEFT JOIN players p 
        ON p.id = g.player_id; 

--問題61：全ての試合のゴール時間と選手名を表示してください。
--右側外部結合を使用してオウンゴール（player_idがNULL）も表示してください。
SELECT
    g.goal_time
    , p.uniform_num
    , p.position
    , p.name 
FROM
    goals g 
    RIGHT JOIN players p 
        ON p.id = g.player_id; 

--問題62：全ての試合のゴール時間と選手名、国名を表示してください。
--また、オウンゴール（player_idがNULL）も表示してください。
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

--問題63：全ての試合のキックオフ時間と対戦国の国名を表示してください。
SELECT
    p.kickoff
    , mc.name AS my_country
    , ec.name AS enemy_country 
FROM
    pairings p JOIN countries mc 
        ON mc.id = p.my_country_id JOIN countries ec 
        ON ec.id = p.enemy_country_id; 

--問題64：全てのゴール時間と得点を上げたプレイヤー名を表示してください。
--オウンゴールは表示しないでください。ただし、結合は使わずに副問合せを用いてください。
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

--問題65：全てのゴール時間と得点を上げたプレイヤー名を表示してください。
--オウンゴールは表示しないでください。ただし、副問合せは使わずに、結合を用いてください。
SELECT
    g.id
    , g.goal_time
    , p.name 
FROM
    goals g JOIN players p 
        ON p.id = g.player_id; 

--問題66：各ポジションごと（GK、FWなど）に最も身長と、その選手名、所属クラブを表示してください。
--ただし、FROM句に副問合せを使用してください。
SELECT
    p.position
    , p.height AS 最大身長
    , p.name
    , p.club 
FROM
    players 
group by
    position) p desc 
    LEFT JOIN players p 
        ON p.height =                           --問題67：各ポジションごと（GK、FWなど）に最も身長と、その選手名を表示してください。
        --ただし、SELECT句に副問合せを使用してください
        --問題68：全選手の平均身長より低い選手をすべて抽出してください。
        --表示する列は、背番号、ポジション、名前、身長としてください。
        SELECT
    uniform_num
    , position
    , name
    , height 
FROM
    players 
WHERE
    height < (SELECT AVG(height) FROM players); 

--問題69：各グループの最上位と最下位を表示し、その差が50より大きいグループを抽出してください。
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

--問題70：1980年生まれと、1981年生まれの選手が何人いるか調べてください。
--ただし、日付関数は使用せず、UNION句を使用してください。
--union 重複する行は削除され
SELECT
    1980 AS 誕生年
    , count(id) 
FROM
    players 
WHERE
    birth BETWEEN '1980-1-1' AND '1980-12-31' 
UNION 
SELECT
    1981 AS 誕生年
    , count(id) 
FROM
    players 
WHERE
    birth BETWEEN '1981-1-1' AND '1981-12-31'; 

--問題71：身長が195㎝より大きいか、体重が95kgより大きい選手を抽出してください。
--ただし、以下の画像のように、どちらの条件にも合致する場合には2件分のデータとして抽出してください。
--また、結果はidの昇順としてください。
--union all 重複した行削除しない
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

--Viewについて説明
--これまでの記事で様々なSQLを説明してきましたが、
--中にはサブクエリのような複雑なSQL文もありました。
--頻繁に使用するテーブルからデータを抽出する時に毎回複雑な
--SQL文を作成して実行するのは手間が掛かりますし、入力ミスする可能性もあります。
--Viewを利用すると楽になる(データ抽出の簡略化,セキュリティ性の向上)
--SQLで利用されるViewは実テーブルから作成される「仮想的なテーブル」だと考えてください。
--管理者が必要なデータだけを抜粋したり、
--各テーブルからデータを参照しやすいように加工したViewを作成することができます。
--Viewはあくまでも仮想テーブルなので、その中にデータは存在しませんが、
--管理者からはテーブル操作をするのと同じような感覚で参照することができます。
--Viewにはデータが存在しないと説明しましたが、Viewの実態はSELECT文です。
--Viewにアクセスする際、定義したSELECT文が実行され、
--抽出したデータを参照することで仮想テーブルのように扱うことができるのです。
--Viewを作成するには以下のように「CREATE VIEW文」を使用します。
--CREATE VIEW ビュー名 AS 定義 [WITH CHECK OPTION];
--例)   CREATE VIEW teachers_view AS
--      SELECT teacher_id,name, class_id FROM teachers;
--Viewの参照
--作成したViewの参照方法ですが、通常のテーブルを参照する時と同じように「SELECT文」を利用します。
--SELECT カラム名,(カラム名,…) FROM ビュー名;
--力試しシリーズ
--問題1：各グループの中でFIFAランクが最も高い国と低い国のランキング番号を表示してください。
SELECT
    group_name AS グループ
    , MIN(ranking) AS ランキング最上位
    , MAX(ranking) AS ランキング最下位 
FROM
    countries 
GROUP BY
    group_name 
ORDER BY
    MIN(ranking) ASC; 

--問題2：全ゴールキーパーの平均身長、平均体重を表示してください
SELECT
    AVG(height) AS 平均身長
    , AVG(weight) AS 平均体重 
FROM
    players 
WHERE
    position = 'GK'; 

--問題3：各国の平均身長を高い方から順に表示してください。
--ただし、FROM句はcountriesテーブルとしてください。
SELECT
    c.name AS 国名
    , AVG(p.height) AS 平均身長 
FROM
    countries c JOIN players p 
        ON c.id = p.country_id 
GROUP BY
    c.name 
ORDER BY
    AVG(p.height) DESC; 

--問題4：各国の平均身長を高い方から順に表示してください。
--ただし、FROM句はplayersテーブルとして、テーブル結合を使わず副問合せを用いてください。
SELECT
    ( 
        SELECT
            c.name 
        FROM
            countries c 
        WHERE
            c.id = p.country_id
    ) AS 国名
    , AVG(p.height) AS 平均身長 
FROM
    players p 
GROUP BY
    p.country_id 
ORDER BY
    AVG(p.height) DESC; 

--問題5：キックオフ日時と対戦国の国名をキックオフ日時の早いものから順に表示してください。
--要数名の重複してはいけないこと
SELECT
    p.kickoff AS キックオフ日時
    , c1.name AS 国名1
    , c2.name AS 国名2 
FROM
    pairings p JOIN countries c1 
        ON c1.id = p.my_country_id JOIN countries c2 
        ON c2.id = p.enemy_country_id 
ORDER BY
    p.kickoff ASC; 

--問題6：すべての選手を対象として選手ごとの得点ランキングを表示してください。
--（SELECT句で副問合せを使うこと）
SELECT
    p.name AS 名前
    , p.positon AS ポジション
    , p.club AS 所属クラブ( 
        SELECT
            COUNT(g.goal_time) 
        FROM
            goals g 
        WHERE
            p.id = g.player_id
    ) AS ゴール数 
FROM
    players p 
ORDER BY
    COUNT(g.goal_time) DESC; 

--問題7：すべての選手を対象として選手ごとの得点ランキングを表示してください。（テーブル結合を使うこと）
SELECT
    p.name AS 名前
    , p.position AS ポジション
    , p.club AS 所属グラブ
    , COUNT(g.player_id) AS ゴール数 
FROM
    goals g JOIN players p 
        ON p.id = g.player_id 
GROUP BY
    p.name
    , p.position
    , p.club
    , g.player_id 
ORDER BY
    ゴール数 DESC; 

--問題8：各ポジションごとの総得点を表示してください。
SELECT
    p.position AS ポジション
    , COUNT(g.player_id) AS ゴール数 
FROM
    players p 
    LEFT JOIN goals g 
        ON p.id = g.player_id 
GROUP BY
    p.position 
ORDER BY
    ゴール数 DESC; 

--問題9：ワールドカップ開催当時（2014-06-13）の年齢をプレイヤー毎に表示する。
--表示項目：誕生日、年齢、名前、ポジション
--表示順：年齢の降順
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
--問題10：オウンゴールの回数を表示する
SELECT COUNT(goal_time) 
FROM goals
WHERE player_id is NULL;

--問題11：各グループごとの総得点数を表示して下さい。
SELECT c.group_name,COUNT(g.id)
FROM goals g
LEFT JOIN pairings p ON p.id=g.pairing_id
LEFT JOIN countries c ON c.id=p.my_country_id
WHERE p.kickoff BETWEEN '2014-6-13' AND '2014-6-27'
GROUP BY c.group_name ;


PGDMP     2    2                z            postgres    14.6 (Debian 14.6-1.pgdg110+1)    14.6 (Debian 14.6-1.pgdg110+1) >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13757    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3334            �            1259    16413    account_attribute    TABLE     �  CREATE TABLE public.account_attribute (
    account_id character varying(100) NOT NULL,
    self_introduction character varying(1000),
    twitter_uri character varying,
    facebook_uri character varying,
    instagram_uri character varying,
    youtube_channel_uri character varying,
    skill character varying(1000) NOT NULL,
    rate character varying,
    status character varying(1),
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
 %   DROP TABLE public.account_attribute;
       public         heap    postgres    false                       0    0    TABLE account_attribute    COMMENT     B   COMMENT ON TABLE public.account_attribute IS 'account_attribute';
          public          postgres    false    209            	           0    0 #   COLUMN account_attribute.account_id    COMMENT     Y   COMMENT ON COLUMN public.account_attribute.account_id IS 'Account ID:アカウントID';
          public          postgres    false    209            
           0    0 *   COLUMN account_attribute.self_introduction    COMMENT     U   COMMENT ON COLUMN public.account_attribute.self_introduction IS 'Self Introduction';
          public          postgres    false    209                       0    0 $   COLUMN account_attribute.twitter_uri    COMMENT     [   COMMENT ON COLUMN public.account_attribute.twitter_uri IS 'Twitter URI:ツイッターID';
          public          postgres    false    209                       0    0 %   COLUMN account_attribute.facebook_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.facebook_uri IS 'Facebook URI:フェイスブックID';
          public          postgres    false    209                       0    0 &   COLUMN account_attribute.instagram_uri    COMMENT     e   COMMENT ON COLUMN public.account_attribute.instagram_uri IS 'Instagram URI:インスタグラムID';
          public          postgres    false    209                       0    0 ,   COLUMN account_attribute.youtube_channel_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.youtube_channel_uri IS 'YouTube Channel URI:YouTubeID';
          public          postgres    false    209                       0    0    COLUMN account_attribute.skill    COMMENT     G   COMMENT ON COLUMN public.account_attribute.skill IS 'Skill:スキル';
          public          postgres    false    209                       0    0    COLUMN account_attribute.rate    COMMENT     B   COMMENT ON COLUMN public.account_attribute.rate IS 'Rate:評価';
          public          postgres    false    209                       0    0    COLUMN account_attribute.status    COMMENT     O   COMMENT ON COLUMN public.account_attribute.status IS 'Status:ステータス';
          public          postgres    false    209                       0    0 $   COLUMN account_attribute.create_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.create_date IS 'Create Date:作成日';
          public          postgres    false    209                       0    0 $   COLUMN account_attribute.update_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.update_date IS 'Update Date:更新日';
          public          postgres    false    209            �            1259    16418    account_master    TABLE     ,  CREATE TABLE public.account_master (
    account_id character varying(64) NOT NULL,
    account_name character varying(20) NOT NULL,
    mail_addless character varying NOT NULL,
    password character varying(64) NOT NULL,
    zip_code character varying NOT NULL,
    barth_date date NOT NULL,
    time_zone character varying NOT NULL,
    language character varying NOT NULL,
    registration_date timestamp(6) without time zone NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.account_master;
       public         heap    postgres    false                       0    0    TABLE account_master    COMMENT     <   COMMENT ON TABLE public.account_master IS 'account_master';
          public          postgres    false    210                       0    0     COLUMN account_master.account_id    COMMENT     P   COMMENT ON COLUMN public.account_master.account_id IS 'Account ID:ユーザID';
          public          postgres    false    210                       0    0 "   COLUMN account_master.account_name    COMMENT     O   COMMENT ON COLUMN public.account_master.account_name IS 'Account Name:氏名';
          public          postgres    false    210                       0    0 "   COLUMN account_master.mail_addless    COMMENT     ^   COMMENT ON COLUMN public.account_master.mail_addless IS 'Mail Addless:メールアドレス';
          public          postgres    false    210                       0    0    COLUMN account_master.password    COMMENT     P   COMMENT ON COLUMN public.account_master.password IS 'Password:パスワード';
          public          postgres    false    210                       0    0    COLUMN account_master.zip_code    COMMENT     M   COMMENT ON COLUMN public.account_master.zip_code IS 'Zip Code:郵便番号';
          public          postgres    false    210                       0    0     COLUMN account_master.barth_date    COMMENT     N   COMMENT ON COLUMN public.account_master.barth_date IS 'Barth Date:誕生日';
          public          postgres    false    210                       0    0    COLUMN account_master.time_zone    COMMENT     U   COMMENT ON COLUMN public.account_master.time_zone IS 'Time Zone:タイムゾーン';
          public          postgres    false    210                       0    0    COLUMN account_master.language    COMMENT     G   COMMENT ON COLUMN public.account_master.language IS 'Language:言語';
          public          postgres    false    210                       0    0 '   COLUMN account_master.registration_date    COMMENT     \   COMMENT ON COLUMN public.account_master.registration_date IS 'Registration Date:登録日';
          public          postgres    false    210                       0    0 !   COLUMN account_master.create_date    COMMENT     P   COMMENT ON COLUMN public.account_master.create_date IS 'Create_Date:作成日';
          public          postgres    false    210                       0    0 !   COLUMN account_master.update_date    COMMENT     P   COMMENT ON COLUMN public.account_master.update_date IS 'Update Date:更新日';
          public          postgres    false    210            �            1259    16423 
   offer_list    TABLE       CREATE TABLE public.offer_list (
    offer_id character varying(64) NOT NULL,
    account_id character varying(64) NOT NULL,
    offer_type character varying(1) NOT NULL,
    offer_title character varying NOT NULL,
    offer_severity character varying,
    offer_catagory character varying,
    offer_location character varying,
    offer_status character varying(1) NOT NULL,
    offer_text character varying(140) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.offer_list;
       public         heap    postgres    false                        0    0    TABLE offer_list    COMMENT     T   COMMENT ON TABLE public.offer_list IS 'offer_list:オファー台帳（catalog）';
          public          postgres    false    211            !           0    0    COLUMN offer_list.offer_id    COMMENT     K   COMMENT ON COLUMN public.offer_list.offer_id IS 'Offer ID:オファーID';
          public          postgres    false    211            "           0    0    COLUMN offer_list.account_id    COMMENT     L   COMMENT ON COLUMN public.offer_list.account_id IS 'Account ID:ユーザID';
          public          postgres    false    211            #           0    0    COLUMN offer_list.offer_type    COMMENT     S   COMMENT ON COLUMN public.offer_list.offer_type IS 'Offer Type:オファー種別';
          public          postgres    false    211            $           0    0    COLUMN offer_list.offer_title    COMMENT     U   COMMENT ON COLUMN public.offer_list.offer_title IS 'Offer Title:オファー題目';
          public          postgres    false    211            %           0    0     COLUMN offer_list.offer_severity    COMMENT     ^   COMMENT ON COLUMN public.offer_list.offer_severity IS 'Offer Severity:オファー優先度';
          public          postgres    false    211            &           0    0     COLUMN offer_list.offer_catagory    COMMENT     d   COMMENT ON COLUMN public.offer_list.offer_catagory IS 'Offer Catagory:オファー・カテゴリ';
          public          postgres    false    211            '           0    0     COLUMN offer_list.offer_location    COMMENT     [   COMMENT ON COLUMN public.offer_list.offer_location IS 'Offer Location:オファー場所';
          public          postgres    false    211            (           0    0    COLUMN offer_list.offer_status    COMMENT     D   COMMENT ON COLUMN public.offer_list.offer_status IS 'Offer Status';
          public          postgres    false    211            )           0    0    COLUMN offer_list.offer_text    COMMENT     P   COMMENT ON COLUMN public.offer_list.offer_text IS 'Offer Text:オファー文';
          public          postgres    false    211            *           0    0    COLUMN offer_list.create_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.create_date IS 'Create Date:作成日';
          public          postgres    false    211            +           0    0    COLUMN offer_list.update_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.update_date IS 'Update Date:更新日';
          public          postgres    false    211            �            1259    16428    purchase_histroy    TABLE     �  CREATE TABLE public.purchase_histroy (
    purchase_id character varying NOT NULL,
    purchase_date date NOT NULL,
    purchase_time time without time zone NOT NULL,
    payer_account_id character varying NOT NULL,
    payee_account_id character varying NOT NULL,
    amount numeric NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
 $   DROP TABLE public.purchase_histroy;
       public         heap    postgres    false            ,           0    0    TABLE purchase_histroy    COMMENT     \   COMMENT ON TABLE public.purchase_histroy IS 'purchase_histroy:課金処理用テーブル';
          public          postgres    false    212            -           0    0 #   COLUMN purchase_histroy.purchase_id    COMMENT     H   COMMENT ON COLUMN public.purchase_histroy.purchase_id IS 'Purchase ID';
          public          postgres    false    212            .           0    0 %   COLUMN purchase_histroy.purchase_date    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_date IS 'Purchase Date';
          public          postgres    false    212            /           0    0 %   COLUMN purchase_histroy.purchase_time    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_time IS 'Purchase Time';
          public          postgres    false    212            0           0    0 (   COLUMN purchase_histroy.payer_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payer_account_id IS 'Payer Account ID:account_idと連動';
          public          postgres    false    212            1           0    0 (   COLUMN purchase_histroy.payee_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payee_account_id IS 'Payee Account ID:account_idと連動';
          public          postgres    false    212            2           0    0    COLUMN purchase_histroy.amount    COMMENT     >   COMMENT ON COLUMN public.purchase_histroy.amount IS 'Amount';
          public          postgres    false    212            3           0    0 #   COLUMN purchase_histroy.create_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.create_date IS 'Create_Date:作成日';
          public          postgres    false    212            4           0    0 #   COLUMN purchase_histroy.update_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.update_date IS 'Update Date:更新日';
          public          postgres    false    212            �          0    16413    account_attribute 
   TABLE DATA           �   COPY public.account_attribute (account_id, self_introduction, twitter_uri, facebook_uri, instagram_uri, youtube_channel_uri, skill, rate, status, create_date, update_date) FROM stdin;
    public          postgres    false    209   �C       �          0    16418    account_master 
   TABLE DATA           �   COPY public.account_master (account_id, account_name, mail_addless, password, zip_code, barth_date, time_zone, language, registration_date, create_date, update_date) FROM stdin;
    public          postgres    false    210   QI       �          0    16423 
   offer_list 
   TABLE DATA           �   COPY public.offer_list (offer_id, account_id, offer_type, offer_title, offer_severity, offer_catagory, offer_location, offer_status, offer_text, create_date, update_date) FROM stdin;
    public          postgres    false    211   1L                  0    16428    purchase_histroy 
   TABLE DATA           �   COPY public.purchase_histroy (purchase_id, purchase_date, purchase_time, payer_account_id, payee_account_id, amount, create_date, update_date) FROM stdin;
    public          postgres    false    212   �T       k           2606    16434 '   account_attribute account_attribute_pkc 
   CONSTRAINT     m   ALTER TABLE ONLY public.account_attribute
    ADD CONSTRAINT account_attribute_pkc PRIMARY KEY (account_id);
 Q   ALTER TABLE ONLY public.account_attribute DROP CONSTRAINT account_attribute_pkc;
       public            postgres    false    209            m           2606    16436 !   account_master account_master_pkc 
   CONSTRAINT     g   ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_master_pkc PRIMARY KEY (account_id);
 K   ALTER TABLE ONLY public.account_master DROP CONSTRAINT account_master_pkc;
       public            postgres    false    210            o           2606    16438    offer_list offer_list_pkc 
   CONSTRAINT     i   ALTER TABLE ONLY public.offer_list
    ADD CONSTRAINT offer_list_pkc PRIMARY KEY (offer_id, account_id);
 C   ALTER TABLE ONLY public.offer_list DROP CONSTRAINT offer_list_pkc;
       public            postgres    false    211    211            q           2606    16440 %   purchase_histroy purchase_histroy_pkc 
   CONSTRAINT     �   ALTER TABLE ONLY public.purchase_histroy
    ADD CONSTRAINT purchase_histroy_pkc PRIMARY KEY (purchase_id, payer_account_id, payee_account_id);
 O   ALTER TABLE ONLY public.purchase_histroy DROP CONSTRAINT purchase_histroy_pkc;
       public            postgres    false    212    212    212            �   �  x���NG���������̬#U��
�D+E(Z�b��W��-H�*���PZb%@���ٮ���
�1-B�)����Y�H`ɳ��33ߜ����=��D{4MWJ3{~v.��	���٧~v��~�g<E�?3��	�CH���Tu||�i�M�ҽvS�W�Ԏ>�J��	>蘕r�D�wz믗��ϖ�_�_��������{ߛ�gO^^ nG�i�u�V2Y�F��F�є�ĭ�=�"��L�z��--j!��&�<�2�ToL�>�XG��<iW�+P��7b�#M{PyT{�!}	)����� M)����#�R]{l؍��f�����^�ޯՉ`M	�
A���5a��u�u��p$[~��{��H��������g�J$�a�˖Xg���mzwk�����;��vE��֫C��n狫g��IYCV�M&�	_��~n�:�)��+7��S��[���5S)O-���NÄUG������>M'R�H=���Eul^[ :���"����n{��5�7���'Zq�3��Y)f��ٵK,�j?���\�̲�]�{p�.TKn.��ٚu��ޜ�2{�e�>�\E|g����kq�+��ׄϰ3fG]w���;���Y#V�r��I˶cU�j��'�6�g�Ǉ�����=�6�����[.���ny}�����h+C��!��Gk��7��.
a�U���%����8��MVV�n��J&���>�*a	gg� B��(��_���-*ќ����`� ��?&�TG7�!�p�_�[��We-'�y""�i���)񼃜X�8�,oI8��LFVVEG\�K/f.X�

b�b��`58��W�e�!6��(����ՆĠ 6���JU�z&]gC
s�*�~[��Z�B�x��\�.�2�!n���|����61�ܖ��� �+M�|qU����Ģù�/�>AT�<9	��sɚ����4�g���Sykɀ��!T�HtW$QqC���~p:'��N"�F�}�/�J\:�6Ds{�< 1(�|,D{�AA�� �l���o��e@��`�7�|AA�ۀP�3(�����e�N)b�D�i!ݮP�b=�V�&(�YV�&X����71B�$�&$�w�oBe�w�&,��+�|3��
V�&�g�8'�k]Q�+�"��ig
1K�C� ~I�Zϴ��
�����g�
b���i^�
⚔]��KՓ���f�v���\.����w��b�./��X�`qq�]�|������9Ca~�A����yIAA�W���%�{�e�f$�3�v3�Ĺ��"����"�,�M�|��ՠ���4����ŗ-z����Ͻ���y�3�LZC��L:u���"_����+���|�M�����<:���Zc��`;�bxB��s� Ȇ�XM���[<� �Hxp���j���}+�󤩡��O݄T      �   �  x�͘�n�PF��)�N�����J�t�e%�IiDq��>}IRU`fF�I�OB,lGse��l�����|5W��r��~��1[=�/.n6�f�n�n��!�mʥ6��з�6W�r������M�q�0[/����w!|x~�\#jc];��d���ݏ�6��vX<6{��n����0��6�}�����r��JhQA�'�m�6���m\R�¡f.��ѩv����W\
\=�3�hr\��u\�z�<p��Kp������w�p$�,��=pt\�؆K�����
p��'!�_0i~�:�-ك+8���zΒ�����A����9�+�zA� Dy힞c8��1i��E�"�V{A�"D����G��Q`$H�mI�G�HB6	�`���e	4��&أ	V4��	�`�����	D��(�#
�D!�	�`��1k��w0�\l:�*XS���	�`s�a�)X3���	�`�G$g�i���0�l��B<�`��&�"�`��<���(D��Xϳ�G�E<�ڙ����D��L�3E���;SD�L�3E���;SB�L	�3%�Δ�;SB�L	�3%�Δ�;S��L	�3e�Δ�;SF�L�3e�Δ�;SF�L�3e�Δ�;S��L���$��-�D��L�3��T�;SA�L�3��T�;SE�L�3U��T�;SE�L�3U��T�;S��L�3u������b2�����      �   �  x�͜mo���_�O�/@|����+U�"���=�ǎ??�Jn�B �@���K�K�e��F,��e?��yկP'�fh�M�e��²���tf���3������Ħa��9�֘�6ӵu�߼r���^�Y��F��M�����u�~��S?��o�>{����E��)
[MX�"o�ވP��H1�B��`P�&�{��5f.�Нaw5H��7�;�/_���w�[�������aw��������gߧ�l63/��eM��l������]�X�"7�u�H�YUtaV��Y72汘��
E���\�[.1TL]#\]����"����/��}�r��ײ�M�tQ��~�<S'�7�#���e�$��S�
��GsE�i���� ��U2s�F�a��4�� ��7��U͘��"g?��x0l��yiP�r�S�ҁ��On���v�aTDF��s�@&����p���-=�[?���9�+��w��+"�a���YE���l�Z��N6u�(!�HBY����\qWq\hQ�ŧ;�h�}�߾��_�����Q�F�����8J(Sp�7n�����A??���['�pV��Z�~vc���=���e=�}v��!ǫ�<���t�ŋ������i���M]/*b��l���+����es�ʴ�a[���M����GQ�e�1Է�������ĘS��)κBN�ͤ�����{W�l
�)���%�U�FQ�����]�����~��42FA�Ppd'�k��p���_�����k�|���N����j�q5?���B�n��n���T�����G���c�T��~{��t�q*�;V�s�F}���enR�
;˲�]Nz�RI��M�K�A�â�@C�_\���y�d�^��(S�\*I"2�\V�u���J�����Q�;9�m�����T�d���W?����^�&i�W�T#��̴]�8���)�
F��8�˲�9l���؆=�7|��ػ�l��F��2�1'ɵ������'9�p�on.�� �]��p8�����o��~ `�g���ƯY ���M9X�����Y��0��cR�Qs�St��K����O�P�Qf�����ŚT�nx�7<�>������)mZ��Ri�㧷GY+ �5���Y"z�tGw������,e8�)��U	�XЎ�|!���\YA -n��:<������E���:�C�`��RI���{b�M#3��:�i��OL-?�o�7w��M��8���嗽\#�w�D�0@B�43ʊS�@�3�7�;�=I�i�kD��D��uw���6Ihi���,�y0$�p���pk~������f�\+#i�1K��/^���n~. �Q\y>�,B����%鞟+�T�2G&F.�-����>^�
��c����ks��.��^}��T < �S%�TAĕr]*��i��8M�����K�T����R�14�K׶�B38x�&��i����
��k�4�P�)A)�����<������a.�pJ)�0����f��=nOC�Zr��J:�J7uH��СT�L�q:3Z��iY����P�R��9h�g�ĉ�4Hu]��W@�Z�,BK5ش�֨�[��9B�Zr1k>Jڢ֪�����R0"-$�)ͦ�b�e|�1"��]؅eIK��<�՞Y����nU	��sr�iԌ�%Ψ�;F5�𠟦	��c�=jSJ)w�I�܄١��Iۡ��\"Cr�6��5�m��Q ��� �ě���Ѱs,�7�p��H*�&��X�oU^AC�5�H.	'��٦�6����� �,��`0�k^δ���m5>�8�>%�1)<�QT'�.[;b)I�Ek��)a���˓��**�L!S�i�j���r�C֖�4�#����)��v�Մ5�"���N��bc�S��Δ���TEӔ�u�˪aB��h������ET#
��`0�+����`�&�ח�)k�`,]	wN���B������� EK9���f����2s��\�X��A�v��,u�{	wy	K��f�k�Ԏ��O͔���af����M�V�͙�\�(ߟ��Ԫ�wws	�/rߊ��UY��Zᢎ�W.X�VD�����
JJ��>KՇ���F�t�`bgܨ	�5M���������9}�T"N��B�KӅE 3^*'���u^b�a���r�8Q�߮^�t�?U�(�            x���;j\A��X�
m`L�w��b��
��h�	��ąn��M�/��?Ͽo/�nkك/;��{�zZo�����]�~���jv���>����������	��"	hI�$��A
ZD� -"C���M�-"� ZCl�1l!�7��xsh!����xKh!����xkh!����x��"BoZC�,ޱE�,�ZD��ݡE�,�ZD��=�E�,�ZD�⽡E�,�ZD��}C�Y�h	�����0h!����h!�����(h!�����h!��-"d�q�5$��[D��ӠE�,>ZD��3�E�,>ZD�ⳠE�,>ZD��s�E�,>7�����֐"�/l!�/���rh!�����Jh!�����jh!�������"B_ZC�,��E�,�ZD��ۡE�,�ZD��;�E�,�ZD�⻡E�,�ZD��{C�Y|h�����1h!����	h!�����)h!�����h!��-"d�s�5d��o��B~��\.��T*     
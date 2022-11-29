PGDMP         7            
    z            postgres    14.6 (Debian 14.6-1.pgdg110+1)    14.6 (Debian 14.6-1.pgdg110+1) $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13757    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3320            �            1259    16442    account_attribute    TABLE       CREATE TABLE public.account_attribute (
    account_id character varying(100) NOT NULL,
    self_introduction character varying(1000),
    twitter_url character varying,
    facebook_url character varying,
    instagram_url character varying,
    youtube_channel character varying,
    update_date timestamp without time zone NOT NULL,
    update_id character varying NOT NULL,
    pic_id_01 character varying NOT NULL,
    pic_id_02 character varying,
    pic_id_03 character varying,
    skill character varying(1000) NOT NULL
);
 %   DROP TABLE public.account_attribute;
       public         heap    postgres    false            �           0    0    TABLE account_attribute    COMMENT     B   COMMENT ON TABLE public.account_attribute IS 'account_attribute';
          public          postgres    false    209            �           0    0 #   COLUMN account_attribute.account_id    COMMENT     Y   COMMENT ON COLUMN public.account_attribute.account_id IS 'Account-ID:アカウントID';
          public          postgres    false    209            �           0    0 *   COLUMN account_attribute.self_introduction    COMMENT     U   COMMENT ON COLUMN public.account_attribute.self_introduction IS 'Self Introduction';
          public          postgres    false    209            �           0    0 $   COLUMN account_attribute.twitter_url    COMMENT     [   COMMENT ON COLUMN public.account_attribute.twitter_url IS 'Twitter URL:ツイッターID';
          public          postgres    false    209            �           0    0 %   COLUMN account_attribute.facebook_url    COMMENT     c   COMMENT ON COLUMN public.account_attribute.facebook_url IS 'Facebook URL:フェイスブックID';
          public          postgres    false    209            �           0    0 &   COLUMN account_attribute.instagram_url    COMMENT     e   COMMENT ON COLUMN public.account_attribute.instagram_url IS 'Instagram URL:インスタグラムID';
          public          postgres    false    209                        0    0 (   COLUMN account_attribute.youtube_channel    COMMENT     [   COMMENT ON COLUMN public.account_attribute.youtube_channel IS 'YouTube Channel:YouTubeID';
          public          postgres    false    209                       0    0 $   COLUMN account_attribute.update_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.update_date IS 'Update Date:更新日';
          public          postgres    false    209                       0    0 "   COLUMN account_attribute.update_id    COMMENT     O   COMMENT ON COLUMN public.account_attribute.update_id IS 'update id:更新者';
          public          postgres    false    209                       0    0 "   COLUMN account_attribute.pic_id_01    COMMENT     b   COMMENT ON COLUMN public.account_attribute.pic_id_01 IS 'Picture ID 1:プロフィール写真1';
          public          postgres    false    209                       0    0 "   COLUMN account_attribute.pic_id_02    COMMENT     b   COMMENT ON COLUMN public.account_attribute.pic_id_02 IS 'Picture ID 2:プロフィール写真2';
          public          postgres    false    209                       0    0 "   COLUMN account_attribute.pic_id_03    COMMENT     b   COMMENT ON COLUMN public.account_attribute.pic_id_03 IS 'Picture ID 3:プロフィール写真3';
          public          postgres    false    209                       0    0    COLUMN account_attribute.skill    COMMENT     G   COMMENT ON COLUMN public.account_attribute.skill IS 'skill:スキル';
          public          postgres    false    209            �            1259    16447    account_master    TABLE     �  CREATE TABLE public.account_master (
    user_id character varying(64) NOT NULL,
    account_name character varying(20) NOT NULL,
    mail_addless character varying NOT NULL,
    password character varying(64) NOT NULL,
    zip_code character varying NOT NULL,
    barth_date date NOT NULL,
    time_zone character varying NOT NULL,
    language character varying NOT NULL,
    status character varying(1) NOT NULL,
    registration_date timestamp without time zone NOT NULL,
    rate character varying
);
 "   DROP TABLE public.account_master;
       public         heap    postgres    false                       0    0    TABLE account_master    COMMENT     <   COMMENT ON TABLE public.account_master IS 'account_master';
          public          postgres    false    210                       0    0    COLUMN account_master.user_id    COMMENT     J   COMMENT ON COLUMN public.account_master.user_id IS 'User ID:ユーザID';
          public          postgres    false    210            	           0    0 "   COLUMN account_master.account_name    COMMENT     O   COMMENT ON COLUMN public.account_master.account_name IS 'Account Name:氏名';
          public          postgres    false    210            
           0    0 "   COLUMN account_master.mail_addless    COMMENT     ^   COMMENT ON COLUMN public.account_master.mail_addless IS 'Mail Addless:メールアドレス';
          public          postgres    false    210                       0    0    COLUMN account_master.password    COMMENT     P   COMMENT ON COLUMN public.account_master.password IS 'Password:パスワード';
          public          postgres    false    210                       0    0    COLUMN account_master.zip_code    COMMENT     M   COMMENT ON COLUMN public.account_master.zip_code IS 'Zip Code:郵便番号';
          public          postgres    false    210                       0    0     COLUMN account_master.barth_date    COMMENT     N   COMMENT ON COLUMN public.account_master.barth_date IS 'Barth Date:誕生日';
          public          postgres    false    210                       0    0    COLUMN account_master.time_zone    COMMENT     U   COMMENT ON COLUMN public.account_master.time_zone IS 'Time Zone:タイムゾーン';
          public          postgres    false    210                       0    0    COLUMN account_master.language    COMMENT     G   COMMENT ON COLUMN public.account_master.language IS 'Language:言語';
          public          postgres    false    210                       0    0    COLUMN account_master.status    COMMENT     L   COMMENT ON COLUMN public.account_master.status IS 'Status:ステータス';
          public          postgres    false    210                       0    0 '   COLUMN account_master.registration_date    COMMENT     \   COMMENT ON COLUMN public.account_master.registration_date IS 'Registration Date:登録日';
          public          postgres    false    210                       0    0    COLUMN account_master.rate    COMMENT     ?   COMMENT ON COLUMN public.account_master.rate IS 'Rate:評価';
          public          postgres    false    210            �          0    16442    account_attribute 
   TABLE DATA           �   COPY public.account_attribute (account_id, self_introduction, twitter_url, facebook_url, instagram_url, youtube_channel, update_date, update_id, pic_id_01, pic_id_02, pic_id_03, skill) FROM stdin;
    public          postgres    false    209   p&       �          0    16447    account_master 
   TABLE DATA           �   COPY public.account_master (user_id, account_name, mail_addless, password, zip_code, barth_date, time_zone, language, status, registration_date, rate) FROM stdin;
    public          postgres    false    210   �/       c           2606    16453 '   account_attribute account_attribute_pkc 
   CONSTRAINT     m   ALTER TABLE ONLY public.account_attribute
    ADD CONSTRAINT account_attribute_pkc PRIMARY KEY (account_id);
 Q   ALTER TABLE ONLY public.account_attribute DROP CONSTRAINT account_attribute_pkc;
       public            postgres    false    209            e           2606    16455 !   account_master account_master_pkc 
   CONSTRAINT     d   ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_master_pkc PRIMARY KEY (user_id);
 K   ALTER TABLE ONLY public.account_master DROP CONSTRAINT account_master_pkc;
       public            postgres    false    210            �   .	  x��YYS��~v~�}�7Y�e˩����R�m��r��r$��%E�<!;K�d���!B���d�i��m�$��6)�,cd��O�_ݲ݌�b�b��_'I�Ԍ�$ifeӔ���fH�9ޕ�I�s�?����ʋ������E�_��(D8*���W�}�>��p{ٓ!(��"�{~Y���Pq�&o�ܙ����a{�Y{��#������燱=���#�'�=���ؾ�������{5/J0�y�9���޹���mԢ�K��k6��T˴z$�2!�EJ�g;�g;��5Е���ݹNV9#ko���5��a1;�/q��u�d��=r�?tE�E,u�,j2�~�E����i�"��*\��~ll��^�'(n{Gx����k��U��2Kz��j̢�2��Y�W�=8��Z�,[�p �AK=��OW��g��'l_��3l�Ã���fbdV��.e�2$�4Q
i�ҫ��&�3?�>XwV��SS���L�_%�����b���V�h�E�$M��H:"2�"��NhIU����J�WK�����n��x���x�;2Xzr�4x)��q�5.�ąpa�7pa7W�ݱ	g��{q��C���i��wA�x�4�F����}4�C% y9�H&)gPB2H]��zF��q���l�y�L�
�֋#K��Cg���<��:Zz5Zz���5TB�.<i�pWc9˰R�n(�)U��CH��8�9�~��I�	9�&T|�����,"y�dD:,�� �.$E$�'�=��y��*�3�T�=���
(�ׇ�oa�W��Ҕ3��5#����&����i����/b{
�Ok E3��i
�4��{����NS�.I��Ƞ�<�*j0�D�H��h|+�J@)R���"�!���uI&!����$!C<��뉟cL$���7�k�w�6�[��ąa\xu��c᭸�^|]E](�S5T�>{1��^HC���o]ҐMU�h����~���3}Za����ԥ�_�G^7��/rL�P��쮉yJ��ҡ*�X}ȔU�$��=2��b3C��7;1�x�/�j�PPH���$����
&�K���^�^^�\�_z>T���=�S��Zl��W�˳��ʈ��2崈�ʮ��v�KN�_,��zM(����@)R�D&��݀�h��x��XgK���x���ki�l9�ߖc-Q���9����w'�����U��׊+O}�no8����j@���\�dA~�q��X��R'ܩS&�n�uv��/|��d��t�N�0�Q�£����H��GN)���n�1Jj������Sy�#��͕��P�Ҡ�<��8�k�^t��b��3�@*=�*_}����w�i�
`�	�_����SQr�_��w"�-/"YT	ÃO�L�œT��J�f9;������o��%��DwfփϽ��;��}�n�]��^/��������`	}+��\���;��Q����>,!��|�ƅ��" N�W���� F%����r���e�D��R����U<��2�'5	�ʤ	(b�4�;cw|���r<z��g���\��旝����3Y�G��JF�ԮS�&g�p޾p&>yw���\����*k��eūMGS�H1��ζW�����i�A.,:�7�ԡ'��0A��YIw�M��8T P3^����u51�i�8�4׸_�O@Q�h�1�Cq������6���������RG�yF�H�\�z�F���H$�p\�C$�� ���� �67��:#��{8���K׆��!��_<r��u�/*��J���5Z���x:��7���:@�$�rM�B5��[�%�ASM�Th����2�B�d��֝���������BE��c��;\x�,����+�d����Vqpٴ_�CQ*g�eE��J\m8�g'N�>���ivt���Ӵu�&<^*/΀�UH��fJ"a�(T0a�X�����g?]h�o����?�Ξ��;�]8g����;N��
]煾��K��~����2.hm�g����p��¯Ts���͍���F��MFl�T�4<m���y�	��>U�PE�Vڤ��v������������I�L�*BU$#-ǥ--VG��I��M0��7���M� MΊ���ȷ24#I��Qu)l ��}18����~���1�������e�m`��K���tx�>d��e��PZjM����i��MKjp�[�m�kV3��-��De8����C�u LP�s�q�\wd�g�o1l�	��b��S���,���""Ð��U�TK7$R����R�^�;�����a��C�9�%�      �   �   x��Խ
�0����@�����.N�B	6��6-���E��`�n����p�jq�Ĉ�����đ�u!ƛ��lv�YR �َ��@�RC}�T�'�j�`�k.�vF��ۃ��j���䲒q�D��9MT���3�.<�Y��-�]�q٠�}���u4����v5����X� �����ȾF��ˁF�ˡFM������o�o�zlY��<��     
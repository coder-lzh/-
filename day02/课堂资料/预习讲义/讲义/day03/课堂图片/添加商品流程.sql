-- parentid=0��������[һ������]
SELECT * FROM tb_category WHERE parent_id=0;

-- ���õ���  ��ѯparent_id=74�ķ���
SELECT * FROM tb_category WHERE parent_id=74;

-- ��ʾ��ҵ��µ������ӷ���  parent_id=75
SELECT * FROM tb_category WHERE parent_id=75;
-- (1)�ۺ�  ���ݸ�ID��ѯ�ӷ���   templateId:ģ��ID=42
--      ���ࣺƽ�����    id=76
SELECT * FROM tb_category WHERE parent_id=?

-- ���ط����Ӧ��Ʒ������   ����ID->���ݷ���ID�ҵ�Ʒ�Ƽ�������(tb_category_brand)
SELECT * FROM tb_category_brand WHERE category_id=76;
-- (2)���ݷ���ID��ѯƷ������
-- �Ӳ�ѯ|
SELECT * FROM tb_brand tb WHERE tb.id IN(
 SELECT tcb.brand_id FROM tb_category_brand tcb WHERE tcb.category_id=76
)
-- ��ֵ��ѯ|
SELECT tb.* FROM tb_category_brand tcb,tb_brand tb WHERE tcb.category_id=76 AND tb.id=tcb.brand_id

-- (3)��ѯģ������,�����û���ѡ��ķ����ҵ������ģ��id(templateId)����ģ��ID��ѯģ����Ϣ
SELECT * FROM tb_template WHERE id=42;


-- (4)��ѯ�������
SELECT * FROM tb_spec WHERE template_id=42;


-- ��5�������û�ѡ�еķ����Ӧ��ģ��ID(templateId)��ѯ����
select * from tb_para where template_id=42

-- (6)��������  �洢SPU+List<SKU>






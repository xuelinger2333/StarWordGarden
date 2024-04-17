GDPC                `                                                                         \   res://.godot/exported/133200997/export-2a49315f142e97c5d4e5b787b66ca254-GameController.scn  �      %      �L�I�z����>͙#m�    T   res://.godot/exported/133200997/export-6183f57203336b67e2406781d1df1acd-Start.scn   �	      �      ��V�C�-�u�a@��9V    P   res://.godot/exported/133200997/export-c97e47512d80091a200fe409ff4774b2-Home.scn      �      ݐ���kں�����V    ,   res://.godot/global_script_class_cache.cfg  �!      �       �~�����>ڨn��    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́        res://.godot/uid_cache.bin   &      �       }��L���7���^�        res://AutoLoad/SceneManager.gd                ���C����bT       res://GameController.gd `      $      y7(��G���Z��C#        res://GameController.tscn.remap P!      k       �5�SWyt,���4       res://UI/Home.gd�            e�Ps�[�l��       res://UI/Home.tscn.remapp       a       E,g��k\�g�<ׄ�       res://UI/Start.gd   �      �      gQZ�6�+�2��s       res://UI/Start.tscn.remap   �       b       �}�����gn��{J~S       res://icon.svg  `"      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       n��rA ���T��       res://project.binary�&      �      �Ϟ�(/>�Mh�־L        extends Node
#user attention:
#compose(scene_name, scene_resource, successor_arrays)
#parent: root_scene, handle_request() function
#child: target_scene, signal scene_change_request (name), 
#no specific queue_free operation
class_name SceneHandler

var successor = []
var scene_name
var resource_path

func _init(scene_n, scene_resource, scene_arr = []):
	scene_name = scene_n
	resource_path = scene_resource
	successor = scene_arr
	
func handle(request, parent):
	if request == scene_name:
		var Scene_Resource = ResourceLoader.load(resource_path)
		var scene = Scene_Resource.instantiate()
		scene.connect("scene_change_request", Callable(parent, "handle_request"))
		
		parent.add_child(scene)
	else:
		for i in successor.size():
			successor[i].handle(request, parent)
		pass
	
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://UI/Home.gd ��������      local://PackedScene_8vuyk          PackedScene          	         names "         Home    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    Panel 	   modulate    	   variants                        �?                   ��i?��?��q?  �?            node_count             nodes     *   ��������       ����                                                          	   	   ����   
                                                    conn_count              conns               node_paths              editable_instances              version             RSRC  extends Control

signal scene_change_request(next_scene)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
         extends Control

signal scene_change_request(next_scene)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_button_pressed():
	scene_change_request.emit("home")
	self.queue_free()
	pass # Replace with function body.
             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://UI/Start.gd ��������      local://PackedScene_wbui6 	         PackedScene          	         names "         Start    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    Panel 	   modulate    StartButton    offset_left    offset_top    offset_right    offset_bottom    text    Button    _on_start_button_pressed    pressed    	   variants                        �?                     �?      �?  �?                  �C    ��C    �%D    ��C      start       node_count             nodes     =   ��������       ����                                                          	   	   ����   
                                                            ����                  	      
                         conn_count             conns                                      node_paths              editable_instances              version             RSRC   extends Control



var home = SceneHandler.new("home", "res://UI/Home.tscn", [])
var start = SceneHandler.new("start", "res://UI/Start.tscn", [home])

func _ready():
	handle_request("start")
	pass 
	
func _process(delta):
	pass
	
func handle_request(request):
	start.handle(request, self)

	
            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://GameController.gd ��������      local://PackedScene_youtw          PackedScene          	         names "         Control    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    	   variants                        �?                      node_count             nodes        ��������        ����                                                        conn_count              conns               node_paths              editable_instances              version             RSRC           GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://df1mqgj5iv0dc"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-c97e47512d80091a200fe409ff4774b2-Home.scn"
               [remap]

path="res://.godot/exported/133200997/export-6183f57203336b67e2406781d1df1acd-Start.scn"
              [remap]

path="res://.godot/exported/133200997/export-2a49315f142e97c5d4e5b787b66ca254-GameController.scn"
     list=Array[Dictionary]([{
"base": &"Node",
"class": &"SceneHandler",
"icon": "",
"language": &"GDScript",
"path": "res://AutoLoad/SceneManager.gd"
}])
         <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             �������h   res://icon.svg�ٳK��`   res://MainScene.tscn7E5���*   res://UI/Start.tscn�ٳK��`   res://GameController.tscny(!���_   res://UI/Home.tscnECFG      application/config/name         StarsWordGarden    application/run/main_scene$         res://GameController.tscn      application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg     editor_plugins/enabled8   "      *   res://addons/coi_serviceworker/plugin.cfg   #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility      
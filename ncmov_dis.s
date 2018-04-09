
ncmov:     file format elf32-i386


Disassembly of section .init:

080482cc <_init>:
 80482cc:	53                   	push   %ebx
 80482cd:	83 ec 08             	sub    $0x8,%esp
 80482d0:	e8 db 00 00 00       	call   80483b0 <__x86.get_pc_thunk.bx>
 80482d5:	81 c3 2b 1d 00 00    	add    $0x1d2b,%ebx
 80482db:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482e1:	85 c0                	test   %eax,%eax
 80482e3:	74 05                	je     80482ea <_init+0x1e>
 80482e5:	e8 36 00 00 00       	call   8048320 <__printf_chk@plt+0x10>
 80482ea:	83 c4 08             	add    $0x8,%esp
 80482ed:	5b                   	pop    %ebx
 80482ee:	c3                   	ret    

Disassembly of section .plt:

080482f0 <__libc_start_main@plt-0x10>:
 80482f0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80482f6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80482fc:	00 00                	add    %al,(%eax)
	...

08048300 <__libc_start_main@plt>:
 8048300:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048306:	68 00 00 00 00       	push   $0x0
 804830b:	e9 e0 ff ff ff       	jmp    80482f0 <_init+0x24>

08048310 <__printf_chk@plt>:
 8048310:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048316:	68 08 00 00 00       	push   $0x8
 804831b:	e9 d0 ff ff ff       	jmp    80482f0 <_init+0x24>

Disassembly of section .plt.got:

08048320 <.plt.got>:
 8048320:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048326:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048330 <main>:
 8048330:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048334:	83 e4 f0             	and    $0xfffffff0,%esp
 8048337:	31 c0                	xor    %eax,%eax
 8048339:	ff 71 fc             	pushl  -0x4(%ecx)
 804833c:	55                   	push   %ebp
 804833d:	89 e5                	mov    %esp,%ebp
 804833f:	53                   	push   %ebx
 8048340:	bb 07 00 00 00       	mov    $0x7,%ebx
 8048345:	51                   	push   %ecx
 8048346:	31 c9                	xor    %ecx,%ecx
 8048348:	90                   	nop
 8048349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048350:	89 da                	mov    %ebx,%edx
 8048352:	a9 01 00 00 00       	test   $0x1,%eax
 8048357:	74 05                	je     804835e <main+0x2e>
 8048359:	ba 05 00 00 00       	mov    $0x5,%edx
 804835e:	83 c0 01             	add    $0x1,%eax
 8048361:	01 d1                	add    %edx,%ecx
 8048363:	3d 00 e1 f5 05       	cmp    $0x5f5e100,%eax
 8048368:	75 e6                	jne    8048350 <main+0x20>
 804836a:	83 ec 04             	sub    $0x4,%esp
 804836d:	51                   	push   %ecx
 804836e:	68 00 85 04 08       	push   $0x8048500
 8048373:	6a 01                	push   $0x1
 8048375:	e8 96 ff ff ff       	call   8048310 <__printf_chk@plt>
 804837a:	83 c4 10             	add    $0x10,%esp
 804837d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048380:	31 c0                	xor    %eax,%eax
 8048382:	59                   	pop    %ecx
 8048383:	5b                   	pop    %ebx
 8048384:	5d                   	pop    %ebp
 8048385:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048388:	c3                   	ret    

08048389 <_start>:
 8048389:	31 ed                	xor    %ebp,%ebp
 804838b:	5e                   	pop    %esi
 804838c:	89 e1                	mov    %esp,%ecx
 804838e:	83 e4 f0             	and    $0xfffffff0,%esp
 8048391:	50                   	push   %eax
 8048392:	54                   	push   %esp
 8048393:	52                   	push   %edx
 8048394:	68 e0 84 04 08       	push   $0x80484e0
 8048399:	68 80 84 04 08       	push   $0x8048480
 804839e:	51                   	push   %ecx
 804839f:	56                   	push   %esi
 80483a0:	68 30 83 04 08       	push   $0x8048330
 80483a5:	e8 56 ff ff ff       	call   8048300 <__libc_start_main@plt>
 80483aa:	f4                   	hlt    
 80483ab:	66 90                	xchg   %ax,%ax
 80483ad:	66 90                	xchg   %ax,%ax
 80483af:	90                   	nop

080483b0 <__x86.get_pc_thunk.bx>:
 80483b0:	8b 1c 24             	mov    (%esp),%ebx
 80483b3:	c3                   	ret    
 80483b4:	66 90                	xchg   %ax,%ax
 80483b6:	66 90                	xchg   %ax,%ax
 80483b8:	66 90                	xchg   %ax,%ax
 80483ba:	66 90                	xchg   %ax,%ax
 80483bc:	66 90                	xchg   %ax,%ax
 80483be:	66 90                	xchg   %ax,%ax

080483c0 <deregister_tm_clones>:
 80483c0:	b8 1f a0 04 08       	mov    $0x804a01f,%eax
 80483c5:	2d 1c a0 04 08       	sub    $0x804a01c,%eax
 80483ca:	83 f8 06             	cmp    $0x6,%eax
 80483cd:	76 1a                	jbe    80483e9 <deregister_tm_clones+0x29>
 80483cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80483d4:	85 c0                	test   %eax,%eax
 80483d6:	74 11                	je     80483e9 <deregister_tm_clones+0x29>
 80483d8:	55                   	push   %ebp
 80483d9:	89 e5                	mov    %esp,%ebp
 80483db:	83 ec 14             	sub    $0x14,%esp
 80483de:	68 1c a0 04 08       	push   $0x804a01c
 80483e3:	ff d0                	call   *%eax
 80483e5:	83 c4 10             	add    $0x10,%esp
 80483e8:	c9                   	leave  
 80483e9:	f3 c3                	repz ret 
 80483eb:	90                   	nop
 80483ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483f0 <register_tm_clones>:
 80483f0:	b8 1c a0 04 08       	mov    $0x804a01c,%eax
 80483f5:	2d 1c a0 04 08       	sub    $0x804a01c,%eax
 80483fa:	c1 f8 02             	sar    $0x2,%eax
 80483fd:	89 c2                	mov    %eax,%edx
 80483ff:	c1 ea 1f             	shr    $0x1f,%edx
 8048402:	01 d0                	add    %edx,%eax
 8048404:	d1 f8                	sar    %eax
 8048406:	74 1b                	je     8048423 <register_tm_clones+0x33>
 8048408:	ba 00 00 00 00       	mov    $0x0,%edx
 804840d:	85 d2                	test   %edx,%edx
 804840f:	74 12                	je     8048423 <register_tm_clones+0x33>
 8048411:	55                   	push   %ebp
 8048412:	89 e5                	mov    %esp,%ebp
 8048414:	83 ec 10             	sub    $0x10,%esp
 8048417:	50                   	push   %eax
 8048418:	68 1c a0 04 08       	push   $0x804a01c
 804841d:	ff d2                	call   *%edx
 804841f:	83 c4 10             	add    $0x10,%esp
 8048422:	c9                   	leave  
 8048423:	f3 c3                	repz ret 
 8048425:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048430 <__do_global_dtors_aux>:
 8048430:	80 3d 1c a0 04 08 00 	cmpb   $0x0,0x804a01c
 8048437:	75 13                	jne    804844c <__do_global_dtors_aux+0x1c>
 8048439:	55                   	push   %ebp
 804843a:	89 e5                	mov    %esp,%ebp
 804843c:	83 ec 08             	sub    $0x8,%esp
 804843f:	e8 7c ff ff ff       	call   80483c0 <deregister_tm_clones>
 8048444:	c6 05 1c a0 04 08 01 	movb   $0x1,0x804a01c
 804844b:	c9                   	leave  
 804844c:	f3 c3                	repz ret 
 804844e:	66 90                	xchg   %ax,%ax

08048450 <frame_dummy>:
 8048450:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048455:	8b 10                	mov    (%eax),%edx
 8048457:	85 d2                	test   %edx,%edx
 8048459:	75 05                	jne    8048460 <frame_dummy+0x10>
 804845b:	eb 93                	jmp    80483f0 <register_tm_clones>
 804845d:	8d 76 00             	lea    0x0(%esi),%esi
 8048460:	ba 00 00 00 00       	mov    $0x0,%edx
 8048465:	85 d2                	test   %edx,%edx
 8048467:	74 f2                	je     804845b <frame_dummy+0xb>
 8048469:	55                   	push   %ebp
 804846a:	89 e5                	mov    %esp,%ebp
 804846c:	83 ec 14             	sub    $0x14,%esp
 804846f:	50                   	push   %eax
 8048470:	ff d2                	call   *%edx
 8048472:	83 c4 10             	add    $0x10,%esp
 8048475:	c9                   	leave  
 8048476:	e9 75 ff ff ff       	jmp    80483f0 <register_tm_clones>
 804847b:	66 90                	xchg   %ax,%ax
 804847d:	66 90                	xchg   %ax,%ax
 804847f:	90                   	nop

08048480 <__libc_csu_init>:
 8048480:	55                   	push   %ebp
 8048481:	57                   	push   %edi
 8048482:	56                   	push   %esi
 8048483:	53                   	push   %ebx
 8048484:	e8 27 ff ff ff       	call   80483b0 <__x86.get_pc_thunk.bx>
 8048489:	81 c3 77 1b 00 00    	add    $0x1b77,%ebx
 804848f:	83 ec 0c             	sub    $0xc,%esp
 8048492:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048496:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804849c:	e8 2b fe ff ff       	call   80482cc <_init>
 80484a1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80484a7:	29 c6                	sub    %eax,%esi
 80484a9:	c1 fe 02             	sar    $0x2,%esi
 80484ac:	85 f6                	test   %esi,%esi
 80484ae:	74 25                	je     80484d5 <__libc_csu_init+0x55>
 80484b0:	31 ff                	xor    %edi,%edi
 80484b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80484b8:	83 ec 04             	sub    $0x4,%esp
 80484bb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484bf:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484c3:	55                   	push   %ebp
 80484c4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80484cb:	83 c7 01             	add    $0x1,%edi
 80484ce:	83 c4 10             	add    $0x10,%esp
 80484d1:	39 f7                	cmp    %esi,%edi
 80484d3:	75 e3                	jne    80484b8 <__libc_csu_init+0x38>
 80484d5:	83 c4 0c             	add    $0xc,%esp
 80484d8:	5b                   	pop    %ebx
 80484d9:	5e                   	pop    %esi
 80484da:	5f                   	pop    %edi
 80484db:	5d                   	pop    %ebp
 80484dc:	c3                   	ret    
 80484dd:	8d 76 00             	lea    0x0(%esi),%esi

080484e0 <__libc_csu_fini>:
 80484e0:	f3 c3                	repz ret 

Disassembly of section .fini:

080484e4 <_fini>:
 80484e4:	53                   	push   %ebx
 80484e5:	83 ec 08             	sub    $0x8,%esp
 80484e8:	e8 c3 fe ff ff       	call   80483b0 <__x86.get_pc_thunk.bx>
 80484ed:	81 c3 13 1b 00 00    	add    $0x1b13,%ebx
 80484f3:	83 c4 08             	add    $0x8,%esp
 80484f6:	5b                   	pop    %ebx
 80484f7:	c3                   	ret    

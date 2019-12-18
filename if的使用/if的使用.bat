@ ECHO OFF
SET/P INPUT=请输入您的年龄：
IF %INPUT% GTR 18 (
	ECHO 你成年了
) ELSE (
	ECHO 你未成年
)
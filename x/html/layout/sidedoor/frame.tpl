{if $TPL_EXISTS && $Xtra != '' AND ($Xtra != 'index')}
	{include file="$Door/$Xtra/$method.tpl"}
{else}
	{include file="$Door/portal.tpl"}
{/if}
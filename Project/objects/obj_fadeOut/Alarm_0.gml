m_isFading = true;
m_alpha += m_fadeSpeed * delta_time/200000;

if(m_alpha>=1)
{
	room_goto_next();
}
else
	alarm[0] = 1;
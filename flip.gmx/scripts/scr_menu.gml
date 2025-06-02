switch (mpos)
{
    case 0:
    {
        room_goto(rm_endtut1);
        break;
    }
    case 1:
    {
        twoPlayer = true;
        room_goto(rm_endtut1); 
        break;
    }
    default:
    {
        room_goto(rm_endtut1);
        break;
    }
}

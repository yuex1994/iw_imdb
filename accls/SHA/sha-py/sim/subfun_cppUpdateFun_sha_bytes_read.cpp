#include "common.hpp"
#include "model_sha_class.hpp"

BIT_VEC model_sha::cppUpdateFun_sha_bytes_read(BIT_VEC cmd, BIT_VEC cmdaddr, BIT_VEC cmddata)
{
	BIT_VEC cppVar_1464;
	bool cppVar_1466 = (sha_state == 0);
	bool cppVar_1468 = (cmd == 2);
	bool cppVar_1469 = cppVar_1466 && cppVar_1468;
	bool cppVar_1471 = (cmdaddr == 65024);
	bool cppVar_1472 = cppVar_1469 && cppVar_1471;
	if (cppVar_1472) {
	BIT_VEC cppVar_1473;
	bool cppVar_1475 = (cmddata == 1);
	if (cppVar_1475) {
	cppVar_1473 = 0;
	} else {
	cppVar_1473 = sha_bytes_read;
	}
	cppVar_1464 = cppVar_1473;
	} else {
	BIT_VEC cppVar_1477;
	bool cppVar_1479 = (sha_state == 1);
	bool cppVar_1481 = (cmd != 1);
	bool cppVar_1482 = cppVar_1479 && cppVar_1481;
	bool cppVar_1484 = (cmdaddr == 65039);
	bool cppVar_1485 = cppVar_1482 && cppVar_1484;
	bool cppVar_1487 = (sha_state == 1);
	bool cppVar_1489 = (cmd != 1);
	bool cppVar_1490 = cppVar_1487 && cppVar_1489;
	bool cppVar_1492 = (cmdaddr == 65038);
	bool cppVar_1493 = cppVar_1490 && cppVar_1492;
	bool cppVar_1495 = (sha_state == 1);
	bool cppVar_1497 = (cmd != 1);
	bool cppVar_1498 = cppVar_1495 && cppVar_1497;
	bool cppVar_1500 = (cmdaddr == 65037);
	bool cppVar_1501 = cppVar_1498 && cppVar_1500;
	bool cppVar_1503 = (sha_state == 1);
	bool cppVar_1505 = (cmd != 1);
	bool cppVar_1506 = cppVar_1503 && cppVar_1505;
	bool cppVar_1508 = (cmdaddr == 65036);
	bool cppVar_1509 = cppVar_1506 && cppVar_1508;
	bool cppVar_1511 = (sha_state == 1);
	bool cppVar_1513 = (cmd != 1);
	bool cppVar_1514 = cppVar_1511 && cppVar_1513;
	bool cppVar_1516 = (cmdaddr == 65035);
	bool cppVar_1517 = cppVar_1514 && cppVar_1516;
	bool cppVar_1519 = (sha_state == 1);
	bool cppVar_1521 = (cmd != 1);
	bool cppVar_1522 = cppVar_1519 && cppVar_1521;
	bool cppVar_1524 = (cmdaddr == 65034);
	bool cppVar_1525 = cppVar_1522 && cppVar_1524;
	bool cppVar_1527 = (sha_state == 1);
	bool cppVar_1529 = (cmd != 1);
	bool cppVar_1530 = cppVar_1527 && cppVar_1529;
	bool cppVar_1532 = (cmdaddr == 65033);
	bool cppVar_1533 = cppVar_1530 && cppVar_1532;
	bool cppVar_1535 = (sha_state == 1);
	bool cppVar_1537 = (cmd != 1);
	bool cppVar_1538 = cppVar_1535 && cppVar_1537;
	bool cppVar_1540 = (cmdaddr == 65032);
	bool cppVar_1541 = cppVar_1538 && cppVar_1540;
	bool cppVar_1543 = (sha_state == 1);
	bool cppVar_1545 = (cmd != 1);
	bool cppVar_1546 = cppVar_1543 && cppVar_1545;
	bool cppVar_1548 = (cmdaddr == 65031);
	bool cppVar_1549 = cppVar_1546 && cppVar_1548;
	bool cppVar_1551 = (sha_state == 1);
	bool cppVar_1553 = (cmd != 1);
	bool cppVar_1554 = cppVar_1551 && cppVar_1553;
	bool cppVar_1556 = (cmdaddr == 65030);
	bool cppVar_1557 = cppVar_1554 && cppVar_1556;
	bool cppVar_1559 = (sha_state == 1);
	bool cppVar_1561 = (cmd != 1);
	bool cppVar_1562 = cppVar_1559 && cppVar_1561;
	bool cppVar_1564 = (cmdaddr == 65029);
	bool cppVar_1565 = cppVar_1562 && cppVar_1564;
	bool cppVar_1567 = (sha_state == 1);
	bool cppVar_1569 = (cmd != 1);
	bool cppVar_1570 = cppVar_1567 && cppVar_1569;
	bool cppVar_1572 = (cmdaddr == 65028);
	bool cppVar_1573 = cppVar_1570 && cppVar_1572;
	bool cppVar_1575 = (sha_state == 1);
	bool cppVar_1577 = (cmd != 1);
	bool cppVar_1578 = cppVar_1575 && cppVar_1577;
	bool cppVar_1580 = (cmdaddr == 65027);
	bool cppVar_1581 = cppVar_1578 && cppVar_1580;
	bool cppVar_1583 = (sha_state == 1);
	bool cppVar_1585 = (cmd != 1);
	bool cppVar_1586 = cppVar_1583 && cppVar_1585;
	bool cppVar_1588 = (cmdaddr == 65026);
	bool cppVar_1589 = cppVar_1586 && cppVar_1588;
	bool cppVar_1591 = (sha_state == 1);
	bool cppVar_1593 = (cmd != 1);
	bool cppVar_1594 = cppVar_1591 && cppVar_1593;
	bool cppVar_1596 = (cmdaddr == 65025);
	bool cppVar_1597 = cppVar_1594 && cppVar_1596;
	bool cppVar_1599 = (sha_state == 1);
	bool cppVar_1601 = (cmd != 1);
	bool cppVar_1602 = cppVar_1599 && cppVar_1601;
	bool cppVar_1604 = (cmdaddr == 65024);
	bool cppVar_1605 = cppVar_1602 && cppVar_1604;
	bool cppVar_1607 = (sha_state == 1);
	bool cppVar_1609 = (cmd == 1);
	bool cppVar_1610 = cppVar_1607 && cppVar_1609;
	bool cppVar_1612 = (cmdaddr == 65039);
	bool cppVar_1613 = cppVar_1610 && cppVar_1612;
	bool cppVar_1615 = (sha_state == 1);
	bool cppVar_1617 = (cmd == 1);
	bool cppVar_1618 = cppVar_1615 && cppVar_1617;
	bool cppVar_1620 = (cmdaddr == 65038);
	bool cppVar_1621 = cppVar_1618 && cppVar_1620;
	bool cppVar_1623 = (sha_state == 1);
	bool cppVar_1625 = (cmd == 1);
	bool cppVar_1626 = cppVar_1623 && cppVar_1625;
	bool cppVar_1628 = (cmdaddr == 65037);
	bool cppVar_1629 = cppVar_1626 && cppVar_1628;
	bool cppVar_1631 = (sha_state == 1);
	bool cppVar_1633 = (cmd == 1);
	bool cppVar_1634 = cppVar_1631 && cppVar_1633;
	bool cppVar_1636 = (cmdaddr == 65036);
	bool cppVar_1637 = cppVar_1634 && cppVar_1636;
	bool cppVar_1639 = (sha_state == 1);
	bool cppVar_1641 = (cmd == 1);
	bool cppVar_1642 = cppVar_1639 && cppVar_1641;
	bool cppVar_1644 = (cmdaddr == 65035);
	bool cppVar_1645 = cppVar_1642 && cppVar_1644;
	bool cppVar_1647 = (sha_state == 1);
	bool cppVar_1649 = (cmd == 1);
	bool cppVar_1650 = cppVar_1647 && cppVar_1649;
	bool cppVar_1652 = (cmdaddr == 65034);
	bool cppVar_1653 = cppVar_1650 && cppVar_1652;
	bool cppVar_1655 = (sha_state == 1);
	bool cppVar_1657 = (cmd == 1);
	bool cppVar_1658 = cppVar_1655 && cppVar_1657;
	bool cppVar_1660 = (cmdaddr == 65033);
	bool cppVar_1661 = cppVar_1658 && cppVar_1660;
	bool cppVar_1663 = (sha_state == 1);
	bool cppVar_1665 = (cmd == 1);
	bool cppVar_1666 = cppVar_1663 && cppVar_1665;
	bool cppVar_1668 = (cmdaddr == 65032);
	bool cppVar_1669 = cppVar_1666 && cppVar_1668;
	bool cppVar_1671 = (sha_state == 1);
	bool cppVar_1673 = (cmd == 1);
	bool cppVar_1674 = cppVar_1671 && cppVar_1673;
	bool cppVar_1676 = (cmdaddr == 65031);
	bool cppVar_1677 = cppVar_1674 && cppVar_1676;
	bool cppVar_1679 = (sha_state == 1);
	bool cppVar_1681 = (cmd == 1);
	bool cppVar_1682 = cppVar_1679 && cppVar_1681;
	bool cppVar_1684 = (cmdaddr == 65030);
	bool cppVar_1685 = cppVar_1682 && cppVar_1684;
	bool cppVar_1687 = (sha_state == 1);
	bool cppVar_1689 = (cmd == 1);
	bool cppVar_1690 = cppVar_1687 && cppVar_1689;
	bool cppVar_1692 = (cmdaddr == 65029);
	bool cppVar_1693 = cppVar_1690 && cppVar_1692;
	bool cppVar_1695 = (sha_state == 1);
	bool cppVar_1697 = (cmd == 1);
	bool cppVar_1698 = cppVar_1695 && cppVar_1697;
	bool cppVar_1700 = (cmdaddr == 65028);
	bool cppVar_1701 = cppVar_1698 && cppVar_1700;
	bool cppVar_1703 = (sha_state == 1);
	bool cppVar_1705 = (cmd == 1);
	bool cppVar_1706 = cppVar_1703 && cppVar_1705;
	bool cppVar_1708 = (cmdaddr == 65027);
	bool cppVar_1709 = cppVar_1706 && cppVar_1708;
	bool cppVar_1711 = (sha_state == 1);
	bool cppVar_1713 = (cmd == 1);
	bool cppVar_1714 = cppVar_1711 && cppVar_1713;
	bool cppVar_1716 = (cmdaddr == 65026);
	bool cppVar_1717 = cppVar_1714 && cppVar_1716;
	bool cppVar_1719 = (sha_state == 1);
	bool cppVar_1721 = (cmd == 1);
	bool cppVar_1722 = cppVar_1719 && cppVar_1721;
	bool cppVar_1724 = (cmdaddr == 65025);
	bool cppVar_1725 = cppVar_1722 && cppVar_1724;
	bool cppVar_1727 = (sha_state == 1);
	bool cppVar_1729 = (cmd == 1);
	bool cppVar_1730 = cppVar_1727 && cppVar_1729;
	bool cppVar_1732 = (cmdaddr == 65024);
	bool cppVar_1733 = cppVar_1730 && cppVar_1732;
	bool cppVar_1734 = cppVar_1725 || cppVar_1733;
	bool cppVar_1735 = cppVar_1717 || cppVar_1734;
	bool cppVar_1736 = cppVar_1709 || cppVar_1735;
	bool cppVar_1737 = cppVar_1701 || cppVar_1736;
	bool cppVar_1738 = cppVar_1693 || cppVar_1737;
	bool cppVar_1739 = cppVar_1685 || cppVar_1738;
	bool cppVar_1740 = cppVar_1677 || cppVar_1739;
	bool cppVar_1741 = cppVar_1669 || cppVar_1740;
	bool cppVar_1742 = cppVar_1661 || cppVar_1741;
	bool cppVar_1743 = cppVar_1653 || cppVar_1742;
	bool cppVar_1744 = cppVar_1645 || cppVar_1743;
	bool cppVar_1745 = cppVar_1637 || cppVar_1744;
	bool cppVar_1746 = cppVar_1629 || cppVar_1745;
	bool cppVar_1747 = cppVar_1621 || cppVar_1746;
	bool cppVar_1748 = cppVar_1613 || cppVar_1747;
	bool cppVar_1749 = cppVar_1605 || cppVar_1748;
	bool cppVar_1750 = cppVar_1597 || cppVar_1749;
	bool cppVar_1751 = cppVar_1589 || cppVar_1750;
	bool cppVar_1752 = cppVar_1581 || cppVar_1751;
	bool cppVar_1753 = cppVar_1573 || cppVar_1752;
	bool cppVar_1754 = cppVar_1565 || cppVar_1753;
	bool cppVar_1755 = cppVar_1557 || cppVar_1754;
	bool cppVar_1756 = cppVar_1549 || cppVar_1755;
	bool cppVar_1757 = cppVar_1541 || cppVar_1756;
	bool cppVar_1758 = cppVar_1533 || cppVar_1757;
	bool cppVar_1759 = cppVar_1525 || cppVar_1758;
	bool cppVar_1760 = cppVar_1517 || cppVar_1759;
	bool cppVar_1761 = cppVar_1509 || cppVar_1760;
	bool cppVar_1762 = cppVar_1501 || cppVar_1761;
	bool cppVar_1763 = cppVar_1493 || cppVar_1762;
	bool cppVar_1764 = cppVar_1485 || cppVar_1763;
	if (cppVar_1764) {
	BIT_VEC cppVar_1766 = sha_bytes_read + 64;
	cppVar_1766 = (cppVar_1766 & cppMask_un_16_);
	cppVar_1477 = cppVar_1766;
	} else {
	cppVar_1477 = sha_bytes_read;
	}
	cppVar_1464 = cppVar_1477;
	}
	return cppVar_1464;
}

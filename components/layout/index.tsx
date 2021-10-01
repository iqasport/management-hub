import Link from 'next/link';
import {
  Grid,
  Box,
  Image,
  UnorderedList,
  ListItem,
  Link as ChakraLink,
  Text,
} from 'components';
import PageErrorBoundary from 'components/errorBoundaries/page';
import { HomeIcon, UserIcon, EuroIcon, GroupIcon } from 'components/icons';
import {
  CheckIcon,
  ExternalLinkIcon,
  QuestionIcon,
  SearchIcon,
  SettingsIcon,
  SunIcon,
  ViewIcon,
} from '@chakra-ui/icons';

const logo = '/images/logo-text-negative.png';
const logoShort = '/images/logo-negative.png';

const MenuList = (props) => <UnorderedList m="0" p="0" {...props} />;
const MenuItem = ({ href, group, ...props }) => (
  <ListItem
    m="0"
    p="0"
    listStyleType="none"
    borderBottom="1px solid"
    borderColor="iqaGreen"
  >
    <MenuLink href={href} group={group} {...props} />
  </ListItem>
);

const groupsColor = {
  base: 'yellow.400',
  support: 'orange.400',
  ngb: 'purple.400',
  admin: 'blue.400',
};

const MenuLink = ({ href, group, ...props }) => (
  <Link href={href} passHref>
    <ChakraLink
      display="grid"
      bg="green.600"
      alignItems="center"
      p={3}
      textDecoration="none"
      gridGap={4}
      borderLeft="4px"
      borderColor={groupsColor[group]}
      fontWeight="bold"
      color="white"
      gridTemplateColumns="1.25rem auto"
      gridTemplateAreas="'icon label'"
      _hover={{
        bgGradient: 'linear(to-b, overlayPressed, overlayPressed)',
      }}
      {...props}
    />
  </Link>
);

const MenuLabel = (props) => (
  <Text
    display={{ base: 'none', xl: 'initial' }}
    m={0}
    fontSize="1rem"
    gridArea="label"
    {...props}
  />
);

const Layout = ({ children }) => {
  return (
    <Grid
      color="gray.800"
      width="100%"
      bg="iqaGreen"
      h="100%"
      gridTemplateColumns={{ base: '50px auto', xl: '260px auto' }}
      gridTemplateAreas="'header main'"
    >
      <Box
        as="header"
        gridArea="header"
        overflowY="auto"
        position="sticky"
        top="0"
        bottom="0"
        height="100vh"
        display="flex"
        flexDirection="column"
      >
        <Box display={{ base: 'none', xl: 'initial' }}>
          <Image
            src={logo}
            layout="responsive"
            alt="IQA Logo"
            height={1890}
            width={4252}
          />
        </Box>
        <Box display={{ base: 'initial', xl: 'none' }}>
          <Image
            src={logoShort}
            layout="responsive"
            alt="IQA Logo"
            height={200}
            width={200}
          />
        </Box>
        <Box as="nav" mt={4}>
          <MenuList>
            <MenuItem group="base" href="/">
              <HomeIcon /> <MenuLabel>Dashboard</MenuLabel>
            </MenuItem>

            <MenuItem group="base" href="/tests">
              <CheckIcon /> <MenuLabel>Qualifications</MenuLabel>
            </MenuItem>

            <MenuItem group="base" href="/profile">
              <UserIcon /> <MenuLabel>Profile</MenuLabel>
            </MenuItem>

            <MenuItem group="base" href="/settings">
              <SettingsIcon /> <MenuLabel>Settings</MenuLabel>
            </MenuItem>
          </MenuList>

          <MenuList mt={8}>
            <MenuItem
              group="support"
              href="https://iqasport.org/rulebook"
              target="_blank"
            >
              <ExternalLinkIcon /> <MenuLabel>Rulebook</MenuLabel>
            </MenuItem>

            <MenuItem group="support" href="/referees">
              <SearchIcon /> <MenuLabel>Referees</MenuLabel>
            </MenuItem>
          </MenuList>

          <MenuList mt={8}>
            <MenuItem group="ngb" href="/ngb/teams">
              <GroupIcon /> <MenuLabel>NGB Teams</MenuLabel>
            </MenuItem>

            <MenuItem group="ngb" href="/ngb/referees">
              <SearchIcon /> <MenuLabel>NGB Referees</MenuLabel>
            </MenuItem>

            <MenuItem group="ngb" href="/ngb/profile">
              <SunIcon /> <MenuLabel>NGB Profile</MenuLabel>
            </MenuItem>

            <MenuItem group="ngb" href="/ngb/finances">
              <EuroIcon /> <MenuLabel>NGB Finances</MenuLabel>
            </MenuItem>
          </MenuList>

          <MenuList mt={8}>
            <MenuItem group="admin" href="/admin/ngbs">
              <ViewIcon /> <MenuLabel>NGBs</MenuLabel>
            </MenuItem>

            <MenuItem group="admin" href="/admin/tests">
              <QuestionIcon /> <MenuLabel>Tests</MenuLabel>
            </MenuItem>
          </MenuList>
        </Box>
      </Box>

      <PageErrorBoundary>
        <Box
          as="main"
          bg="gray.100"
          display="flex"
          flexDirection="column"
          gridArea="main"
          height="100%"
        >
          {children}
        </Box>
      </PageErrorBoundary>
    </Grid>
  );
};

export default Layout;

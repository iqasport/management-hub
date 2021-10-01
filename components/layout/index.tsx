import { Grid, Box } from 'components';
import PageErrorBoundary from 'components/errorBoundaries/page';

const Layout = ({ children }) => {
  return (
    <Grid
      color="gray.800"
      width="100%"
      bg="iqaGreen"
      h="100%"
      gridTemplateColumns={{ base: '1fr', md: '70px auto', xl: '260px auto' }}
      gridTemplateAreas={{ base: "'main'", md: "'header main'" }}
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
      />
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

import { Grid, Flex, Link, Box } from '@chakra-ui/react';
import dynamic from 'next/dynamic';
import { ChakraProvider } from '@chakra-ui/react';

import theme from 'styles/theme';

const Text = dynamic(() => import('components/text'));
const Header = dynamic(() => import('components/layout/header'));
const Footer = dynamic(() => import('components/layout/footer'));
const PageErrorBoundary = dynamic(
  () => import('components/errorBoundaries/page')
);

const Layout = ({ children, preview = false }) => {
  return (
    <ChakraProvider theme={theme} resetCSS={false}>
      <Grid color="gray.800" width="100%" bg="iqaGreen">
        {preview && (
          <Flex
            bg="red"
            color="white"
            alignItems="center"
            justifyContent="center"
          >
            <Text>
              This page is a preview.{' '}
              <Link
                fontWeight="bold"
                color="white"
                textDecoration="none"
                href="/api/exit-preview"
                _hover={{ textDecoration: 'underline' }}
              >
                Click here
              </Link>{' '}
              to exit preview mode.
            </Text>
          </Flex>
        )}

        <Header />
        <PageErrorBoundary>
          <Box
            as="main"
            sx={{
              'div[data-type="wave"]:last-of-type': {
                display: 'none',
              },
            }}
            display="flex"
            flexDirection="column"
          >
            {children}
          </Box>
        </PageErrorBoundary>
        <Footer />
      </Grid>
    </ChakraProvider>
  );
};

export default Layout;

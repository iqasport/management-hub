import { useRouter } from 'next/router';
import { useEffect } from 'react';
import type { AppProps } from 'next/app';
import { ChakraProvider } from '@chakra-ui/react';
import Fonts from 'styles/fonts';
import theme from 'styles/theme';
import DocumentHead from 'document/head';
import { QueryClientProvider, QueryClient } from 'react-query';
import GTag, { pageview } from 'modules/analytics';
import AppErrorBoundary from 'components/errorBoundaries/app';
import Layout from 'components/layout';

const queryClient = new QueryClient();

const MyApp = ({ Component, pageProps }: AppProps) => {
  const router = useRouter();

  useEffect(() => {
    const handleRouteChange = (url: URL) => {
      pageview(url);
    };
    router.events.on('routeChangeComplete', handleRouteChange);

    return () => {
      router.events.off('routeChangeComplete', handleRouteChange);
    };
  }, [router.events]);

  return (
    <AppErrorBoundary>
      <QueryClientProvider client={queryClient}>
        <ChakraProvider theme={theme} resetCSS={false}>
          <GTag />
          <DocumentHead />
          <Fonts />
          <Layout>
            <Component {...pageProps} />
          </Layout>
        </ChakraProvider>
      </QueryClientProvider>
    </AppErrorBoundary>
  );
};

export default MyApp;

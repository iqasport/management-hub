import { useRouter } from 'next/router';
import dynamic from 'next/dynamic';

const Meta = dynamic(() => import('components/meta'));
const Page404 = dynamic(() => import('pages/404'));
const PageLoading = dynamic(() => import('components/page-loading'));
import { formatMetadata } from 'modules/prismic';
const PrismicSlice = dynamic(() => import('components/prismic'));

// Base Prismic page component with 404 and loading fallbacks
const Base = ({ page, posts, preview }) => {
  const router = useRouter();

  if (router?.isFallback && !page) {
    return <PageLoading />;
  }

  if (!page && !preview) {
    return <Page404 />;
  }

  return (
    <>
      <Meta {...formatMetadata(page.data)} />
      <PrismicSlice sections={page.data.body} posts={posts} />
    </>
  );
};

export default Base;

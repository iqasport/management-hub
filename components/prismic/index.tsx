import { ReactElement } from 'react';
import { Slice, PrismicDocument } from '@prismicio/types';
import dynamic from 'next/dynamic';

const Hero = dynamic(() => import('components/prismic/hero'));
const HeaderAndParagraph = dynamic(
  () => import('components/prismic/header-and-paragraph')
);
const Images = dynamic(() => import('components/prismic/images'));
const ImageAndContent = dynamic(
  () => import('components/prismic/image-and-content')
);
const Cards = dynamic(() => import('components/prismic/cards'));
const Embed = dynamic(() => import('components/prismic/embed'));
const EmbedAndContent = dynamic(
  () => import('components/prismic/embed-and-content')
);
const HorizontalCards = dynamic(
  () => import('components/prismic/horizontal-cards')
);

const slices = {
  hero: Hero,
  header_and_paragraph: HeaderAndParagraph,
  images: Images,
  embed: Embed,
  image_and_content: ImageAndContent,
  cards: Cards,
  embed_and_content: EmbedAndContent,
  horizontal_card: HorizontalCards,
};

type PrismicSliceProps = {
  sections: Array<Slice>;
  posts?: Array<PrismicDocument>;
};

function PrismicSlice({ sections, posts }: PrismicSliceProps): ReactElement {
  return (
    <>
      {sections.map((section, i) => {
        const Component = slices[section?.slice_type];

        if (!Component) {
          console.warn('Missing Prismic Component ID: ', section?.slice_type);
          console.warn(section);
          return null;
        }

        return <Component key={`prismic-${i}`} {...section} posts={posts} />;
      })}
    </>
  );
}

export default PrismicSlice;

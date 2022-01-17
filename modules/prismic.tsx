import * as prismic from '@prismicio/client';

const REPOSITORY = process.env.NEXT_PUBLIC_PRISMIC_REPOSITORY_NAME;
const REF_API_URL = `https://${REPOSITORY}.prismic.io/api/v2`;
export const API_TOKEN = process.env.PRISMIC_API_TOKEN;

export const client = prismic.createClient(REF_API_URL, {
  accessToken: API_TOKEN,
});

export const formatMetadata = ({
  meta_description,
  meta_title,
  meta_image,
}) => ({
  description: meta_description,
  subTitle: meta_title,
  image: meta_image?.url,
});

export const getDocs = async (type, options = {}) => {
  const { results } = await client.get({
    predicates: prismic.predicate.at('document.type', type),
    ...options,
  });

  return results;
};

export const getPrismicDocByUid = (type, uid, options = {}) => {
  return client.getByUID(type, uid, options);
};

export const linkResolver = ({ type, uid }: { type: string; uid: string }) => {
  switch (type) {
    default:
      return `/${uid}`;
  }
};

export const manageLocal = (Locales: Array<any>, locale: string) => {
  // Languages from API response
  // // Setting Master language as default language option
  const mainLanguage = Locales[0];
  // // Sets current language based on the locale
  const currentLang = locale !== undefined ? locale : mainLanguage;
  const isMyMainLanguage = mainLanguage === currentLang;

  return { mainLanguage, currentLang, isMyMainLanguage };
};

export async function getStaticPrismicProps({
  type,
  uid,
  lang,
  locales,
  previewData,
}) {
  const { ref } = previewData;
  const page = await getPrismicDocByUid(type, uid, { lang, ref });

  const { currentLang, isMyMainLanguage } = manageLocal(locales, lang);
  return { page, lang: { currentLang, isMyMainLanguage } };
}

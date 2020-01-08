import 'select2';

const initSelect2 = () => {
  document.querySelector('.select2').select2(
    {
      multiple: true
    });
};

export { initSelect2 };

<script>
  // @ts-nocheck

  // library for creating dropdown menu appear on click
  import { createPopper } from "@popperjs/core";
  import userphoto from "/assets/Photos-icon.png";
  // core components

  // TODO: refactorig dropdown and user avatar
  let dropdownPopoverShow = false;

  /**
   * @type {Element | import("@popperjs/core").VirtualElement}
   */
  let btnDropdownRef;
  /**
   * @type {HTMLElement}
   */
  let popoverDropdownRef;

  const toggleDropdown = (
    /** @type {{ preventDefault: () => void; }} */ event,
  ) => {
    event.preventDefault();
    if (dropdownPopoverShow) {
      dropdownPopoverShow = false;
    } else {
      dropdownPopoverShow = true;
      createPopper(btnDropdownRef, popoverDropdownRef, {
        placement: "bottom-start",
      });
    }
  };
</script>

<div>
  <a
    class="text-blueGray-500 block"
    href="#pablo"
    bind:this={btnDropdownRef}
    on:click={toggleDropdown}
  >
    <div class="items-center flex">
      <span
        class="w-12 h-12 text-sm text-white bg-blueGray-200 inline-flex items-center justify-center rounded-full"
      >
        <img
          alt="..."
          class="w-full rounded-full align-middle border-none shadow-lg"
          src={userphoto}
        />
      </span>
    </div>
  </a>
  <div
    bind:this={popoverDropdownRef}
    class="bg-white text-base z-50 float-left py-2 list-none text-left rounded shadow-lg min-w-48 {dropdownPopoverShow
      ? 'block'
      : 'hidden'}"
  >
    <a
      href="#pablo"
      on:click={(e) => e.preventDefault()}
      class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
    >
      Action
    </a>
    <a
      href="#pablo"
      on:click={(e) => e.preventDefault()}
      class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
    >
      Another action
    </a>
    <a
      href="#pablo"
      on:click={(e) => e.preventDefault()}
      class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
    >
      Something else here
    </a>
    <!-- svelte-ignore element_invalid_self_closing_tag -->
    <div class="h-0 my-2 border border-solid border-blueGray-100" />
    <a
      href="#pablo"
      on:click={(e) => e.preventDefault()}
      class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
    >
      Seprated link
    </a>
  </div>
</div>

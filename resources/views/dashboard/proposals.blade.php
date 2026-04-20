<x-app-layout>
    <x-slot name="header">
        <div class="flex flex-row justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('My Proposals') }}
            </h2>
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-10 flex flex-col gap-y-5">

                @forelse (Auth::user()->proposals as $proposal)
                    <!-- Proposal Card Container -->
                    <div
                        class="item-card flex flex-col md:flex-row md:items-center gap-6 md:gap-8 px-4 md:px-6 py-3 border rounded-2xl">

                        <!-- Left Section: Image & Title (Fixed width) -->
                        <div class="flex flex-row items-center gap-4 flex-shrink-0">
                            <img src="{{ Storage::url($proposal->project->thumbnail) }}" alt=""
                                class="rounded-2xl object-cover w-[100px] md:w-[120px] h-[75px] md:h-[90px] flex-shrink-0">
                            <div class="flex flex-col min-w-0">
                                <h3 class="text-indigo-950 text-lg md:text-xl font-bold truncate">
                                    {{ $proposal->project->name }}
                                </h3>
                                <p class="text-slate-500 text-xs md:text-sm truncate">
                                    {{ $proposal->project->category->name }}
                                </p>
                            </div>
                        </div>

                        <!-- Middle & Right Sections: Info Grid (Grows to fill space) -->
                        <div class="flex flex-row gap-6 md:gap-8 flex-grow md:justify-end">

                            <!-- Budget Section -->
                            <div class="flex flex-col flex-1 md:flex-initial md:min-w-[140px]">
                                <p class="text-slate-500 text-xs">Budget</p>
                                <h3 class="text-indigo-950 text-base md:text-lg font-bold break-words">
                                    Rp {{ number_format($proposal->project->budget, 0, ',', '.') }}
                                </h3>
                            </div>

                            <!-- Applied Date Section -->
                            <div class="flex flex-col flex-1 md:flex-initial md:min-w-[120px]">
                                <p class="text-slate-500 text-xs">Applied at</p>
                                <h3 class="text-indigo-950 text-base md:text-lg font-bold">
                                    {{ $proposal->created_at->format('M d, Y') }}
                                </h3>
                            </div>

                        </div>

                        <!-- Right Section: Button (Full width on mobile, fixed on desktop) -->
                        <div class="flex w-full md:w-auto">
                            <a href="{{ route('dashboard.proposal_details', [$proposal->project, $proposal->id]) }}"
                                class="w-full md:w-auto font-bold py-3 px-8 bg-indigo-700 text-white rounded-full text-sm md:text-base hover:bg-indigo-800 active:bg-indigo-900 transition-colors text-center flex-shrink-0">
                                Details
                            </a>
                        </div>
                    </div>
                @empty
                    <p class="text-center text-slate-500 py-8">Anda belum mengirimkan sebuah proposal.</p>
                @endforelse


            </div>
        </div>
    </div>
</x-app-layout>

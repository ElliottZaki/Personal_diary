require './lib/personal_diary'

describe '#make_snippet' do
    context 'Given an empty string' do 
        it 'returns an empty string' do
            result = ''
            expect(make_snippet(result)).to eq('')
        end
    end

    context 'Given a four word string' do
        it 'should return the first four words' do
            result = 'one two three four'
            expect(make_snippet(result)).to eq('one two three four')
        end
    end

    context 'Given a five word string' do
        it 'should return the first five words' do
            result = 'one two three four five'
            expect(make_snippet(result)).to eq('one two three four five')
        end
    end

    context 'Given a six word string' do
        it 'should return the first five words and then return ... for the sixth worth' do
            result = 'one two three four five six'
            expect(make_snippet(result)).to eq('one two three four five ...')
        end
    end

    context 'When given a eight word string' do
        it 'should return the first five words and then return ... for the sixth worth' do
            result = 'one two three four five six seven eight'
            expect(make_snippet(result)).to eq('one two three four five ...')
        end
    end
end

describe '#word_count' do
     context 'When given a string, it will count how many words are in that string' do
        it ' should return a size of eight words for a string containing eight words' do
            result = 'one two three four five six seven eight'.split(' ')
            expect(send(:word_count, result)).to eq(8)
        end
    end
end
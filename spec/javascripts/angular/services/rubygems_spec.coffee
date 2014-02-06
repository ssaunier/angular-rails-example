describe "Rubygems", () ->
  ROOT = "https://rubygems.org/api/v1"

  beforeEach module('app')
  httpBackend = rubygems = null

  beforeEach inject ($httpBackend, Rubygems) ->
    rubygems = Rubygems
    httpBackend = $httpBackend

  afterEach () ->
    httpBackend.verifyNoOutstandingExpectation()
    httpBackend.verifyNoOutstandingRequest()

  describe "search", () ->
    it "should return a list of gems", () ->
      httpBackend.when('GET', "#{ROOT}/search.json?query=rails").respond([])
      rubygems.search("rails").then (data) ->
        expect(data).toEqual([])
      httpBackend.flush()
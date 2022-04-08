import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetSearchWordsData
         Used By: Catalog
     */

    class GetSearchWordsData: Codable {
        public var customJson: [String: Any]?

        public var uid: String?

        public var words: [String]?

        public var result: [String: Any]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case uid

            case words

            case result

            case appId = "app_id"
        }

        public init(appId: String?, result: [String: Any]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.uid = uid

            self.words = words

            self.result = result

            self.appId = appId
        }

        public func duplicate() -> GetSearchWordsData {
            let dict = self.dictionary!
            let copy = GetSearchWordsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                result = try container.decode([String: Any].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: GetSearchWordsDetailResponse
         Used By: Catalog
     */

    class GetSearchWordsDetailResponse: Codable {
        public var page: Page?

        public var items: GetSearchWordsData?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: GetSearchWordsData?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> GetSearchWordsDetailResponse {
            let dict = self.dictionary!
            let copy = GetSearchWordsDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode(GetSearchWordsData.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ErrorResponse
         Used By: Catalog
     */

    class ErrorResponse: Codable {
        public var meta: [String: Any]?

        public var message: String?

        public var status: Int?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case message

            case status

            case code
        }

        public init(code: String?, message: String?, meta: [String: Any]?, status: Int?) {
            self.meta = meta

            self.message = message

            self.status = status

            self.code = code
        }

        public func duplicate() -> ErrorResponse {
            let dict = self.dictionary!
            let copy = ErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: SearchKeywordResult
         Used By: Catalog
     */

    class SearchKeywordResult: Codable {
        public var sortOn: String

        public var query: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case query
        }

        public init(query: [String: Any], sortOn: String) {
            self.sortOn = sortOn

            self.query = query
        }

        public func duplicate() -> SearchKeywordResult {
            let dict = self.dictionary!
            let copy = SearchKeywordResult(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sortOn = try container.decode(String.self, forKey: .sortOn)

            query = try container.decode([String: Any].self, forKey: .query)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }

    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var words: [String]?

        public var result: SearchKeywordResult

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case isActive = "is_active"

            case words

            case result

            case appId = "app_id"
        }

        public init(appId: String?, isActive: Bool?, result: SearchKeywordResult, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.isActive = isActive

            self.words = words

            self.result = result

            self.appId = appId
        }

        public func duplicate() -> CreateSearchKeyword {
            let dict = self.dictionary!
            let copy = CreateSearchKeyword(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: DeleteResponse
         Used By: Catalog
     */

    class DeleteResponse: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> DeleteResponse {
            let dict = self.dictionary!
            let copy = DeleteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: GetSearchWordsResponse
         Used By: Catalog
     */

    class GetSearchWordsResponse: Codable {
        public var page: Page?

        public var items: [GetSearchWordsData]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [GetSearchWordsData]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> GetSearchWordsResponse {
            let dict = self.dictionary!
            let copy = GetSearchWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetSearchWordsData].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var customJson: [String: Any]?

        public var uid: String?

        public var words: [String]?

        public var appId: String?

        public var results: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case uid

            case words

            case appId = "app_id"

            case results
        }

        public init(appId: String?, results: [[String: Any]]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.uid = uid

            self.words = words

            self.appId = appId

            self.results = results
        }

        public func duplicate() -> GetAutocompleteWordsData {
            let dict = self.dictionary!
            let copy = GetAutocompleteWordsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                results = try container.decode([[String: Any]].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }

    /*
         Model: GetAutocompleteWordsResponse
         Used By: Catalog
     */

    class GetAutocompleteWordsResponse: Codable {
        public var page: Page?

        public var items: [GetAutocompleteWordsData]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [GetAutocompleteWordsData]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> GetAutocompleteWordsResponse {
            let dict = self.dictionary!
            let copy = GetAutocompleteWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetAutocompleteWordsData].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: Media
         Used By: Catalog
     */

    class Media: Codable {
        public var url: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case type
        }

        public init(type: String?, url: String?) {
            self.url = url

            self.type = type
        }

        public func duplicate() -> Media {
            let dict = self.dictionary!
            let copy = Media(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: AutocompletePageAction
         Used By: Catalog
     */

    class AutocompletePageAction: Codable {
        public var type: String?

        public var url: String?

        public var params: [String: Any]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case params

            case query
        }

        public init(params: [String: Any]?, query: [String: Any]?, type: String?, url: String?) {
            self.type = type

            self.url = url

            self.params = params

            self.query = query
        }

        public func duplicate() -> AutocompletePageAction {
            let dict = self.dictionary!
            let copy = AutocompletePageAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }

    /*
         Model: AutocompleteAction
         Used By: Catalog
     */

    class AutocompleteAction: Codable {
        public var page: AutocompletePageAction?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case page

            case type
        }

        public init(page: AutocompletePageAction?, type: String?) {
            self.page = page

            self.type = type
        }

        public func duplicate() -> AutocompleteAction {
            let dict = self.dictionary!
            let copy = AutocompleteAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(AutocompletePageAction.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: AutocompleteResult
         Used By: Catalog
     */

    class AutocompleteResult: Codable {
        public var logo: Media?

        public var action: AutocompleteAction?

        public var display: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case logo

            case action

            case display

            case customJson = "_custom_json"
        }

        public init(action: AutocompleteAction?, display: String?, logo: Media?, customJson: [String: Any]?) {
            self.logo = logo

            self.action = action

            self.display = display

            self.customJson = customJson
        }

        public func duplicate() -> AutocompleteResult {
            let dict = self.dictionary!
            let copy = AutocompleteResult(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(AutocompleteAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: CreateAutocompleteKeyword
         Used By: Catalog
     */

    class CreateAutocompleteKeyword: Codable {
        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var words: [String]?

        public var appId: String?

        public var results: [AutocompleteResult]?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case isActive = "is_active"

            case words

            case appId = "app_id"

            case results
        }

        public init(appId: String?, isActive: Bool?, results: [AutocompleteResult]?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.isActive = isActive

            self.words = words

            self.appId = appId

            self.results = results
        }

        public func duplicate() -> CreateAutocompleteKeyword {
            let dict = self.dictionary!
            let copy = CreateAutocompleteKeyword(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                results = try container.decode([AutocompleteResult].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }

    /*
         Model: CreateAutocompleteWordsResponse
         Used By: Catalog
     */

    class CreateAutocompleteWordsResponse: Codable {
        public var appId: String?

        public var customJson: [String: Any]?

        public var words: [String]?

        public var results: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case customJson = "_custom_json"

            case words

            case results
        }

        public init(appId: String?, results: [[String: Any]]?, words: [String]?, customJson: [String: Any]?) {
            self.appId = appId

            self.customJson = customJson

            self.words = words

            self.results = results
        }

        public func duplicate() -> CreateAutocompleteWordsResponse {
            let dict = self.dictionary!
            let copy = CreateAutocompleteWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                results = try container.decode([[String: Any]].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }

    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var autoSelect: Bool?

        public var productUid: Int

        public var autoAddToCart: Bool?

        public var minQuantity: Int

        public var maxQuantity: Int

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoSelect = "auto_select"

            case productUid = "product_uid"

            case autoAddToCart = "auto_add_to_cart"

            case minQuantity = "min_quantity"

            case maxQuantity = "max_quantity"

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.autoSelect = autoSelect

            self.productUid = productUid

            self.autoAddToCart = autoAddToCart

            self.minQuantity = minQuantity

            self.maxQuantity = maxQuantity

            self.allowRemove = allowRemove
        }

        public func duplicate() -> ProductBundleItem {
            let dict = self.dictionary!
            let copy = ProductBundleItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }

    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var choice: String

        public var pageVisibility: [String]?

        public var modifiedOn: String?

        public var createdBy: [String: Any]?

        public var isActive: Bool

        public var products: [ProductBundleItem]

        public var modifiedBy: [String: Any]?

        public var logo: String?

        public var createdOn: String?

        public var slug: String

        public var name: String

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case choice

            case pageVisibility = "page_visibility"

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case isActive = "is_active"

            case products

            case modifiedBy = "modified_by"

            case logo

            case createdOn = "created_on"

            case slug

            case name

            case meta

            case sameStoreAssignment = "same_store_assignment"
        }

        public init(choice: String, createdBy: [String: Any]?, createdOn: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.choice = choice

            self.pageVisibility = pageVisibility

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.isActive = isActive

            self.products = products

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.createdOn = createdOn

            self.slug = slug

            self.name = name

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment
        }

        public func duplicate() -> ProductBundleRequest {
            let dict = self.dictionary!
            let copy = ProductBundleRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
        }
    }

    /*
         Model: GetProductBundleCreateResponse
         Used By: Catalog
     */

    class GetProductBundleCreateResponse: Codable {
        public var choice: String

        public var pageVisibility: [String]?

        public var modifiedOn: String?

        public var companyId: Int?

        public var id: String?

        public var createdBy: [String: Any]?

        public var isActive: Bool

        public var products: [ProductBundleItem]

        public var modifiedBy: [String: Any]?

        public var logo: String?

        public var createdOn: String?

        public var slug: String

        public var name: String

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case choice

            case pageVisibility = "page_visibility"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case id

            case createdBy = "created_by"

            case isActive = "is_active"

            case products

            case modifiedBy = "modified_by"

            case logo

            case createdOn = "created_on"

            case slug

            case name

            case meta

            case sameStoreAssignment = "same_store_assignment"
        }

        public init(choice: String, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, id: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.choice = choice

            self.pageVisibility = pageVisibility

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.id = id

            self.createdBy = createdBy

            self.isActive = isActive

            self.products = products

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.createdOn = createdOn

            self.slug = slug

            self.name = name

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment
        }

        public func duplicate() -> GetProductBundleCreateResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleCreateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
        }
    }

    /*
         Model: GetProductBundleListingResponse
         Used By: Catalog
     */

    class GetProductBundleListingResponse: Codable {
        public var page: Page?

        public var items: [GetProductBundleCreateResponse]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [GetProductBundleCreateResponse]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> GetProductBundleListingResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetProductBundleCreateResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var identifier: [String: Any]?

        public var quantity: Int?

        public var attributes: [String: Any]?

        public var images: [String]?

        public var price: [String: Any]?

        public var uid: Int?

        public var countryOfOrigin: String?

        public var sizes: [String]?

        public var shortDescription: String?

        public var itemCode: String?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case quantity

            case attributes

            case images

            case price

            case uid

            case countryOfOrigin = "country_of_origin"

            case sizes

            case shortDescription = "short_description"

            case itemCode = "item_code"

            case slug

            case name
        }

        public init(attributes: [String: Any]?, countryOfOrigin: String?, identifier: [String: Any]?, images: [String]?, itemCode: String?, name: String?, price: [String: Any]?, quantity: Int?, shortDescription: String?, sizes: [String]?, slug: String?, uid: Int?) {
            self.identifier = identifier

            self.quantity = quantity

            self.attributes = attributes

            self.images = images

            self.price = price

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.sizes = sizes

            self.shortDescription = shortDescription

            self.itemCode = itemCode

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> LimitedProductData {
            let dict = self.dictionary!
            let copy = LimitedProductData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([String].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode([String: Any].self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: Price
         Used By: Catalog
     */

    class Price: Codable {
        public var maxMarked: Double?

        public var minMarked: Double?

        public var minEffective: Double?

        public var maxEffective: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case maxMarked = "max_marked"

            case minMarked = "min_marked"

            case minEffective = "min_effective"

            case maxEffective = "max_effective"

            case currency
        }

        public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
            self.maxMarked = maxMarked

            self.minMarked = minMarked

            self.minEffective = minEffective

            self.maxEffective = maxEffective

            self.currency = currency
        }

        public func duplicate() -> Price {
            let dict = self.dictionary!
            let copy = Price(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maxMarked = try container.decode(Double.self, forKey: .maxMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minMarked = try container.decode(Double.self, forKey: .minMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minEffective = try container.decode(Double.self, forKey: .minEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxEffective = try container.decode(Double.self, forKey: .maxEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: Size
         Used By: Catalog
     */

    class Size: Codable {
        public var display: String?

        public var quantity: Int?

        public var isAvailable: Bool?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case quantity

            case isAvailable = "is_available"

            case value
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.display = display

            self.quantity = quantity

            self.isAvailable = isAvailable

            self.value = value
        }

        public func duplicate() -> Size {
            let dict = self.dictionary!
            let copy = Size(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: GetProducts
         Used By: Catalog
     */

    class GetProducts: Codable {
        public var productDetails: LimitedProductData?

        public var autoSelect: Bool?

        public var price: Price?

        public var maxQuantity: Int?

        public var allowRemove: Bool?

        public var autoAddToCart: Bool?

        public var minQuantity: Int?

        public var productUid: Int?

        public var sizes: [Size]?

        public enum CodingKeys: String, CodingKey {
            case productDetails = "product_details"

            case autoSelect = "auto_select"

            case price

            case maxQuantity = "max_quantity"

            case allowRemove = "allow_remove"

            case autoAddToCart = "auto_add_to_cart"

            case minQuantity = "min_quantity"

            case productUid = "product_uid"

            case sizes
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price?, productDetails: LimitedProductData?, productUid: Int?, sizes: [Size]?) {
            self.productDetails = productDetails

            self.autoSelect = autoSelect

            self.price = price

            self.maxQuantity = maxQuantity

            self.allowRemove = allowRemove

            self.autoAddToCart = autoAddToCart

            self.minQuantity = minQuantity

            self.productUid = productUid

            self.sizes = sizes
        }

        public func duplicate() -> GetProducts {
            let dict = self.dictionary!
            let copy = GetProducts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productDetails = try container.decode(LimitedProductData.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Price.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productUid = try container.decode(Int.self, forKey: .productUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: GetProductBundleResponse
         Used By: Catalog
     */

    class GetProductBundleResponse: Codable {
        public var pageVisibility: [String]?

        public var choice: String?

        public var companyId: Int?

        public var isActive: Bool?

        public var products: [GetProducts]?

        public var logo: String?

        public var slug: String?

        public var name: String?

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case pageVisibility = "page_visibility"

            case choice

            case companyId = "company_id"

            case isActive = "is_active"

            case products

            case logo

            case slug

            case name

            case meta

            case sameStoreAssignment = "same_store_assignment"
        }

        public init(choice: String?, companyId: Int?, isActive: Bool?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [GetProducts]?, sameStoreAssignment: Bool?, slug: String?) {
            self.pageVisibility = pageVisibility

            self.choice = choice

            self.companyId = companyId

            self.isActive = isActive

            self.products = products

            self.logo = logo

            self.slug = slug

            self.name = name

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment
        }

        public func duplicate() -> GetProductBundleResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                choice = try container.decode(String.self, forKey: .choice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([GetProducts].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
        }
    }

    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var choice: String

        public var pageVisibility: [String]?

        public var modifiedOn: String?

        public var isActive: Bool

        public var products: [ProductBundleItem]

        public var modifiedBy: [String: Any]?

        public var logo: String?

        public var slug: String

        public var name: String

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case choice

            case pageVisibility = "page_visibility"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case products

            case modifiedBy = "modified_by"

            case logo

            case slug

            case name

            case meta

            case sameStoreAssignment = "same_store_assignment"
        }

        public init(choice: String, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.choice = choice

            self.pageVisibility = pageVisibility

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.products = products

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.slug = slug

            self.name = name

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment
        }

        public func duplicate() -> ProductBundleUpdateRequest {
            let dict = self.dictionary!
            let copy = ProductBundleUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
        }
    }

    /*
         Model: Meta
         Used By: Catalog
     */

    class Meta: Codable {
        public var headers: [String: Any]?

        public var values: [[String: Any]]?

        public var unit: String?

        public enum CodingKeys: String, CodingKey {
            case headers

            case values

            case unit
        }

        public init(headers: [String: Any]?, unit: String?, values: [[String: Any]]?) {
            self.headers = headers

            self.values = values

            self.unit = unit
        }

        public func duplicate() -> Meta {
            let dict = self.dictionary!
            let copy = Meta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headers = try container.decode([String: Any].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }

    /*
         Model: Guide
         Used By: Catalog
     */

    class Guide: Codable {
        public var meta: Meta?

        public enum CodingKeys: String, CodingKey {
            case meta
        }

        public init(meta: Meta?) {
            self.meta = meta
        }

        public func duplicate() -> Guide {
            let dict = self.dictionary!
            let copy = Guide(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: ValidateSizeGuide
         Used By: Catalog
     */

    class ValidateSizeGuide: Codable {
        public var companyId: Int?

        public var modifiedOn: String?

        public var tag: String?

        public var id: String?

        public var title: String

        public var subtitle: String?

        public var modifiedBy: [String: Any]?

        public var brandId: Int?

        public var guide: Guide?

        public var image: String?

        public var createdOn: String?

        public var active: Bool?

        public var description: String?

        public var name: String

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case tag

            case id

            case title

            case subtitle

            case modifiedBy = "modified_by"

            case brandId = "brand_id"

            case guide

            case image

            case createdOn = "created_on"

            case active

            case description

            case name

            case createdBy = "created_by"
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, description: String?, guide: Guide?, id: String?, image: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, subtitle: String?, tag: String?, title: String) {
            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.tag = tag

            self.id = id

            self.title = title

            self.subtitle = subtitle

            self.modifiedBy = modifiedBy

            self.brandId = brandId

            self.guide = guide

            self.image = image

            self.createdOn = createdOn

            self.active = active

            self.description = description

            self.name = name

            self.createdBy = createdBy
        }

        public func duplicate() -> ValidateSizeGuide {
            let dict = self.dictionary!
            let copy = ValidateSizeGuide(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                guide = try container.decode(Guide.self, forKey: .guide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: SuccessResponse
         Used By: Catalog
     */

    class SuccessResponse: Codable {
        public var uid: Int?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case uid

            case success
        }

        public init(success: Bool?, uid: Int?) {
            self.uid = uid

            self.success = success
        }

        public func duplicate() -> SuccessResponse {
            let dict = self.dictionary!
            let copy = SuccessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: ListSizeGuide
         Used By: Catalog
     */

    class ListSizeGuide: Codable {
        public var page: [String: Any]?

        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> ListSizeGuide {
            let dict = self.dictionary!
            let copy = ListSizeGuide(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: SizeGuideResponse
         Used By: Catalog
     */

    class SizeGuideResponse: Codable {
        public var modifiedOn: String?

        public var companyId: Int?

        public var tag: String?

        public var id: String?

        public var title: String?

        public var subtitle: String?

        public var modifiedBy: [String: Any]?

        public var brandId: Int?

        public var createdOn: String?

        public var guide: [String: Any]?

        public var active: Bool?

        public var name: String?

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case tag

            case id

            case title

            case subtitle

            case modifiedBy = "modified_by"

            case brandId = "brand_id"

            case createdOn = "created_on"

            case guide

            case active

            case name

            case createdBy = "created_by"
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, guide: [String: Any]?, id: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, subtitle: String?, tag: String?, title: String?) {
            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.tag = tag

            self.id = id

            self.title = title

            self.subtitle = subtitle

            self.modifiedBy = modifiedBy

            self.brandId = brandId

            self.createdOn = createdOn

            self.guide = guide

            self.active = active

            self.name = name

            self.createdBy = createdBy
        }

        public func duplicate() -> SizeGuideResponse {
            let dict = self.dictionary!
            let copy = SizeGuideResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                guide = try container.decode([String: Any].self, forKey: .guide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: MetaFields
         Used By: Catalog
     */

    class MetaFields: Codable {
        public var key: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case key

            case value
        }

        public init(key: String, value: String) {
            self.key = key

            self.value = value
        }

        public func duplicate() -> MetaFields {
            let dict = self.dictionary!
            let copy = MetaFields(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ApplicationItemMeta
         Used By: Catalog
     */

    class ApplicationItemMeta: Codable {
        public var customMeta: [MetaFields]

        public enum CodingKeys: String, CodingKey {
            case customMeta = "_custom_meta"
        }

        public init(customMeta: [MetaFields]) {
            self.customMeta = customMeta
        }

        public func duplicate() -> ApplicationItemMeta {
            let dict = self.dictionary!
            let copy = ApplicationItemMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customMeta = try container.decode([MetaFields].self, forKey: .customMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
        }
    }

    /*
         Model: MetaDataListingSortMetaResponse
         Used By: Catalog
     */

    class MetaDataListingSortMetaResponse: Codable {
        public var key: String?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case display
        }

        public init(display: String?, key: String?) {
            self.key = key

            self.display = display
        }

        public func duplicate() -> MetaDataListingSortMetaResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingSortMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: MetaDataListingSortResponse
         Used By: Catalog
     */

    class MetaDataListingSortResponse: Codable {
        public var data: [MetaDataListingSortMetaResponse]?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [MetaDataListingSortMetaResponse]?) {
            self.data = data
        }

        public func duplicate() -> MetaDataListingSortResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingSortResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([MetaDataListingSortMetaResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var key: String?

        public var units: [[String: Any]]?

        public var display: String?

        public var filterTypes: [String]?

        public enum CodingKeys: String, CodingKey {
            case key

            case units

            case display

            case filterTypes = "filter_types"
        }

        public init(display: String?, filterTypes: [String]?, key: String?, units: [[String: Any]]?) {
            self.key = key

            self.units = units

            self.display = display

            self.filterTypes = filterTypes
        }

        public func duplicate() -> MetaDataListingFilterMetaResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingFilterMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                units = try container.decode([[String: Any]].self, forKey: .units)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filterTypes = try container.decode([String].self, forKey: .filterTypes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
        }
    }

    /*
         Model: MetaDataListingFilterResponse
         Used By: Catalog
     */

    class MetaDataListingFilterResponse: Codable {
        public var data: [MetaDataListingFilterMetaResponse]?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [MetaDataListingFilterMetaResponse]?) {
            self.data = data
        }

        public func duplicate() -> MetaDataListingFilterResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingFilterResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([MetaDataListingFilterMetaResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: MetaDataListingResponse
         Used By: Catalog
     */

    class MetaDataListingResponse: Codable {
        public var sort: MetaDataListingSortResponse

        public var filter: MetaDataListingFilterResponse

        public enum CodingKeys: String, CodingKey {
            case sort

            case filter
        }

        public init(filter: MetaDataListingFilterResponse, sort: MetaDataListingSortResponse) {
            self.sort = sort

            self.filter = filter
        }

        public func duplicate() -> MetaDataListingResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sort = try container.decode(MetaDataListingSortResponse.self, forKey: .sort)

            filter = try container.decode(MetaDataListingFilterResponse.self, forKey: .filter)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(filter, forKey: .filter)
        }
    }

    /*
         Model: GetCatalogConfigurationDetailsProduct
         Used By: Catalog
     */

    class GetCatalogConfigurationDetailsProduct: Codable {
        public var compare: [String: Any]?

        public var variant: [String: Any]?

        public var similar: [String: Any]?

        public var detail: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case compare

            case variant

            case similar

            case detail
        }

        public init(compare: [String: Any]?, detail: [String: Any]?, similar: [String: Any]?, variant: [String: Any]?) {
            self.compare = compare

            self.variant = variant

            self.similar = similar

            self.detail = detail
        }

        public func duplicate() -> GetCatalogConfigurationDetailsProduct {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationDetailsProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                compare = try container.decode([String: Any].self, forKey: .compare)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variant = try container.decode([String: Any].self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similar = try container.decode([String: Any].self, forKey: .similar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                detail = try container.decode([String: Any].self, forKey: .detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(compare, forKey: .compare)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(detail, forKey: .detail)
        }
    }

    /*
         Model: GetCatalogConfigurationMetaData
         Used By: Catalog
     */

    class GetCatalogConfigurationMetaData: Codable {
        public var listing: MetaDataListingResponse?

        public var product: GetCatalogConfigurationDetailsProduct?

        public enum CodingKeys: String, CodingKey {
            case listing

            case product
        }

        public init(listing: MetaDataListingResponse?, product: GetCatalogConfigurationDetailsProduct?) {
            self.listing = listing

            self.product = product
        }

        public func duplicate() -> GetCatalogConfigurationMetaData {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationMetaData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listing = try container.decode(MetaDataListingResponse.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }

    /*
         Model: ConfigurationListingSortConfig
         Used By: Catalog
     */

    class ConfigurationListingSortConfig: Codable {
        public var key: String

        public var isActive: Bool

        public var logo: String?

        public var priority: Int

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case logo

            case priority

            case name
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int) {
            self.key = key

            self.isActive = isActive

            self.logo = logo

            self.priority = priority

            self.name = name
        }

        public func duplicate() -> ConfigurationListingSortConfig {
            let dict = self.dictionary!
            let copy = ConfigurationListingSortConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ConfigurationListingSort
         Used By: Catalog
     */

    class ConfigurationListingSort: Codable {
        public var defaultKey: String

        public var config: [ConfigurationListingSortConfig]?

        public enum CodingKeys: String, CodingKey {
            case defaultKey = "default_key"

            case config
        }

        public init(config: [ConfigurationListingSortConfig]?, defaultKey: String) {
            self.defaultKey = defaultKey

            self.config = config
        }

        public func duplicate() -> ConfigurationListingSort {
            let dict = self.dictionary!
            let copy = ConfigurationListingSort(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            do {
                config = try container.decode([ConfigurationListingSortConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }

    /*
         Model: ConfigurationBucketPoints
         Used By: Catalog
     */

    class ConfigurationBucketPoints: Codable {
        public var end: Double?

        public var start: Double?

        public enum CodingKeys: String, CodingKey {
            case end

            case start
        }

        public init(end: Double?, start: Double?) {
            self.end = end

            self.start = start
        }

        public func duplicate() -> ConfigurationBucketPoints {
            let dict = self.dictionary!
            let copy = ConfigurationBucketPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                end = try container.decode(Double.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(Double.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)
        }
    }

    /*
         Model: ConfigurationListingFilterValue
         Used By: Catalog
     */

    class ConfigurationListingFilterValue: Codable {
        public var bucketPoints: [ConfigurationBucketPoints]?

        public var sort: String?

        public var map: [String: Any]?

        public var value: String?

        public var condition: String?

        public enum CodingKeys: String, CodingKey {
            case bucketPoints = "bucket_points"

            case sort

            case map

            case value

            case condition
        }

        public init(bucketPoints: [ConfigurationBucketPoints]?, condition: String?, map: [String: Any]?, sort: String?, value: String?) {
            self.bucketPoints = bucketPoints

            self.sort = sort

            self.map = map

            self.value = value

            self.condition = condition
        }

        public func duplicate() -> ConfigurationListingFilterValue {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bucketPoints = try container.decode([ConfigurationBucketPoints].self, forKey: .bucketPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sort = try container.decode(String.self, forKey: .sort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                map = try container.decode([String: Any].self, forKey: .map)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                condition = try container.decode(String.self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(map, forKey: .map)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(condition, forKey: .condition)
        }
    }

    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var key: String

        public var isActive: Bool

        public var type: String

        public var logo: String?

        public var valueConfig: ConfigurationListingFilterValue?

        public var priority: Int

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case type

            case logo

            case valueConfig = "value_config"

            case priority

            case name
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue?) {
            self.key = key

            self.isActive = isActive

            self.type = type

            self.logo = logo

            self.valueConfig = valueConfig

            self.priority = priority

            self.name = name
        }

        public func duplicate() -> ConfigurationListingFilterConfig {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            type = try container.decode(String.self, forKey: .type)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ConfigurationListingFilter
         Used By: Catalog
     */

    class ConfigurationListingFilter: Codable {
        public var allowSingle: Bool

        public var attributeConfig: [ConfigurationListingFilterConfig]?

        public enum CodingKeys: String, CodingKey {
            case allowSingle = "allow_single"

            case attributeConfig = "attribute_config"
        }

        public init(allowSingle: Bool, attributeConfig: [ConfigurationListingFilterConfig]?) {
            self.allowSingle = allowSingle

            self.attributeConfig = attributeConfig
        }

        public func duplicate() -> ConfigurationListingFilter {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allowSingle = try container.decode(Bool.self, forKey: .allowSingle)

            do {
                attributeConfig = try container.decode([ConfigurationListingFilterConfig].self, forKey: .attributeConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)

            try? container.encodeIfPresent(attributeConfig, forKey: .attributeConfig)
        }
    }

    /*
         Model: ConfigurationListing
         Used By: Catalog
     */

    class ConfigurationListing: Codable {
        public var sort: ConfigurationListingSort

        public var filter: ConfigurationListingFilter

        public enum CodingKeys: String, CodingKey {
            case sort

            case filter
        }

        public init(filter: ConfigurationListingFilter, sort: ConfigurationListingSort) {
            self.sort = sort

            self.filter = filter
        }

        public func duplicate() -> ConfigurationListing {
            let dict = self.dictionary!
            let copy = ConfigurationListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sort = try container.decode(ConfigurationListingSort.self, forKey: .sort)

            filter = try container.decode(ConfigurationListingFilter.self, forKey: .filter)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(filter, forKey: .filter)
        }
    }

    /*
         Model: ProductSize
         Used By: Catalog
     */

    class ProductSize: Codable {
        public var min: Int

        public var max: Int

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: Int, min: Int) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> ProductSize {
            let dict = self.dictionary!
            let copy = ProductSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            min = try container.decode(Int.self, forKey: .min)

            max = try container.decode(Int.self, forKey: .max)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var size: ProductSize

        public var key: String

        public var isActive: Bool

        public var logo: String?

        public var priority: Int

        public var name: String

        public var displayType: String

        public enum CodingKeys: String, CodingKey {
            case size

            case key

            case isActive = "is_active"

            case logo

            case priority

            case name

            case displayType = "display_type"
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String?, name: String, priority: Int, size: ProductSize) {
            self.size = size

            self.key = key

            self.isActive = isActive

            self.logo = logo

            self.priority = priority

            self.name = name

            self.displayType = displayType
        }

        public func duplicate() -> ConfigurationProductVariantConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductVariantConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(ProductSize.self, forKey: .size)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            displayType = try container.decode(String.self, forKey: .displayType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayType, forKey: .displayType)
        }
    }

    /*
         Model: ConfigurationProductVariant
         Used By: Catalog
     */

    class ConfigurationProductVariant: Codable {
        public var config: [ConfigurationProductVariantConfig]?

        public enum CodingKeys: String, CodingKey {
            case config
        }

        public init(config: [ConfigurationProductVariantConfig]?) {
            self.config = config
        }

        public func duplicate() -> ConfigurationProductVariant {
            let dict = self.dictionary!
            let copy = ConfigurationProductVariant(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode([ConfigurationProductVariantConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }

    /*
         Model: ConfigurationProductConfig
         Used By: Catalog
     */

    class ConfigurationProductConfig: Codable {
        public var size: ProductSize?

        public var key: String

        public var title: String?

        public var isActive: Bool

        public var subtitle: String?

        public var logo: String?

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case key

            case title

            case isActive = "is_active"

            case subtitle

            case logo

            case priority
        }

        public init(isActive: Bool, key: String, logo: String?, priority: Int, size: ProductSize?, subtitle: String?, title: String?) {
            self.size = size

            self.key = key

            self.title = title

            self.isActive = isActive

            self.subtitle = subtitle

            self.logo = logo

            self.priority = priority
        }

        public func duplicate() -> ConfigurationProductConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(ProductSize.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }

    /*
         Model: ConfigurationProductSimilar
         Used By: Catalog
     */

    class ConfigurationProductSimilar: Codable {
        public var config: [ConfigurationProductConfig]?

        public enum CodingKeys: String, CodingKey {
            case config
        }

        public init(config: [ConfigurationProductConfig]?) {
            self.config = config
        }

        public func duplicate() -> ConfigurationProductSimilar {
            let dict = self.dictionary!
            let copy = ConfigurationProductSimilar(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode([ConfigurationProductConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }

    /*
         Model: ConfigurationProduct
         Used By: Catalog
     */

    class ConfigurationProduct: Codable {
        public var variant: ConfigurationProductVariant

        public var similar: ConfigurationProductSimilar

        public enum CodingKeys: String, CodingKey {
            case variant

            case similar
        }

        public init(similar: ConfigurationProductSimilar, variant: ConfigurationProductVariant) {
            self.variant = variant

            self.similar = similar
        }

        public func duplicate() -> ConfigurationProduct {
            let dict = self.dictionary!
            let copy = ConfigurationProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            variant = try container.decode(ConfigurationProductVariant.self, forKey: .variant)

            similar = try container.decode(ConfigurationProductSimilar.self, forKey: .similar)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(similar, forKey: .similar)
        }
    }

    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var configId: String?

        public var configType: String

        public var listing: ConfigurationListing?

        public var appId: String

        public var product: ConfigurationProduct?

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case configType = "config_type"

            case listing

            case appId = "app_id"

            case product
        }

        public init(appId: String, configId: String?, configType: String, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.configId = configId

            self.configType = configType

            self.listing = listing

            self.appId = appId

            self.product = product
        }

        public func duplicate() -> AppConfiguration {
            let dict = self.dictionary!
            let copy = AppConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }

    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var configId: String?

        public var id: String?

        public var configType: String

        public var listing: ConfigurationListing?

        public var appId: String

        public var product: ConfigurationProduct?

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case id

            case configType = "config_type"

            case listing

            case appId = "app_id"

            case product
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.configId = configId

            self.id = id

            self.configType = configType

            self.listing = listing

            self.appId = appId

            self.product = product
        }

        public func duplicate() -> AppCatalogConfiguration {
            let dict = self.dictionary!
            let copy = AppCatalogConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }

    /*
         Model: GetAppCatalogConfiguration
         Used By: Catalog
     */

    class GetAppCatalogConfiguration: Codable {
        public var data: AppCatalogConfiguration?

        public var isDefault: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case isDefault = "is_default"
        }

        public init(data: AppCatalogConfiguration?, isDefault: Bool?) {
            self.data = data

            self.isDefault = isDefault
        }

        public func duplicate() -> GetAppCatalogConfiguration {
            let dict = self.dictionary!
            let copy = GetAppCatalogConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(AppCatalogConfiguration.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }

    /*
         Model: GetCatalogConfigurationDetailsSchemaListing
         Used By: Catalog
     */

    class GetCatalogConfigurationDetailsSchemaListing: Codable {
        public var sort: [String: Any]?

        public var filter: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sort

            case filter
        }

        public init(filter: [String: Any]?, sort: [String: Any]?) {
            self.sort = sort

            self.filter = filter
        }

        public func duplicate() -> GetCatalogConfigurationDetailsSchemaListing {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationDetailsSchemaListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sort = try container.decode([String: Any].self, forKey: .sort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filter = try container.decode([String: Any].self, forKey: .filter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(filter, forKey: .filter)
        }
    }

    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var configId: String?

        public var id: String?

        public var configType: String

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var appId: String

        public var product: GetCatalogConfigurationDetailsProduct?

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case id

            case configType = "config_type"

            case listing

            case appId = "app_id"

            case product
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: GetCatalogConfigurationDetailsSchemaListing?, product: GetCatalogConfigurationDetailsProduct?) {
            self.configId = configId

            self.id = id

            self.configType = configType

            self.listing = listing

            self.appId = appId

            self.product = product
        }

        public func duplicate() -> EntityConfiguration {
            let dict = self.dictionary!
            let copy = EntityConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }

    /*
         Model: GetAppCatalogEntityConfiguration
         Used By: Catalog
     */

    class GetAppCatalogEntityConfiguration: Codable {
        public var data: EntityConfiguration?

        public var isDefault: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case isDefault = "is_default"
        }

        public init(data: EntityConfiguration?, isDefault: Bool?) {
            self.data = data

            self.isDefault = isDefault
        }

        public func duplicate() -> GetAppCatalogEntityConfiguration {
            let dict = self.dictionary!
            let copy = GetAppCatalogEntityConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(EntityConfiguration.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }

    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */

    class ProductFiltersKey: Codable {
        public var display: String

        public var logo: String?

        public var kind: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case display

            case logo

            case kind

            case name
        }

        public init(display: String, kind: String?, logo: String?, name: String) {
            self.display = display

            self.logo = logo

            self.kind = kind

            self.name = name
        }

        public func duplicate() -> ProductFiltersKey {
            let dict = self.dictionary!
            let copy = ProductFiltersKey(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            display = try container.decode(String.self, forKey: .display)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */

    class ProductFiltersValue: Codable {
        public var count: Int?

        public var display: String

        public var currencyCode: String?

        public var selectedMin: Int?

        public var value: String

        public var displayFormat: String?

        public var isSelected: Bool

        public var min: Int?

        public var currencySymbol: String?

        public var max: Int?

        public var queryFormat: String?

        public var selectedMax: Int?

        public enum CodingKeys: String, CodingKey {
            case count

            case display

            case currencyCode = "currency_code"

            case selectedMin = "selected_min"

            case value

            case displayFormat = "display_format"

            case isSelected = "is_selected"

            case min

            case currencySymbol = "currency_symbol"

            case max

            case queryFormat = "query_format"

            case selectedMax = "selected_max"
        }

        public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String) {
            self.count = count

            self.display = display

            self.currencyCode = currencyCode

            self.selectedMin = selectedMin

            self.value = value

            self.displayFormat = displayFormat

            self.isSelected = isSelected

            self.min = min

            self.currencySymbol = currencySymbol

            self.max = max

            self.queryFormat = queryFormat

            self.selectedMax = selectedMax
        }

        public func duplicate() -> ProductFiltersValue {
            let dict = self.dictionary!
            let copy = ProductFiltersValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
        }
    }

    /*
         Model: ProductFilters
         Used By: Catalog
     */

    class ProductFilters: Codable {
        public var key: ProductFiltersKey

        public var values: [ProductFiltersValue]

        public enum CodingKeys: String, CodingKey {
            case key

            case values
        }

        public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
            self.key = key

            self.values = values
        }

        public func duplicate() -> ProductFilters {
            let dict = self.dictionary!
            let copy = ProductFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(ProductFiltersKey.self, forKey: .key)

            values = try container.decode([ProductFiltersValue].self, forKey: .values)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(values, forKey: .values)
        }
    }

    /*
         Model: ProductSortOn
         Used By: Catalog
     */

    class ProductSortOn: Codable {
        public var isSelected: Bool?

        public var name: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case isSelected = "is_selected"

            case name

            case value
        }

        public init(isSelected: Bool?, name: String?, value: String?) {
            self.isSelected = isSelected

            self.name = name

            self.value = value
        }

        public func duplicate() -> ProductSortOn {
            let dict = self.dictionary!
            let copy = ProductSortOn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: GetCollectionQueryOptionResponse
         Used By: Catalog
     */

    class GetCollectionQueryOptionResponse: Codable {
        public var filters: [ProductFilters]?

        public var sortOn: [ProductSortOn]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case sortOn = "sort_on"
        }

        public init(filters: [ProductFilters]?, sortOn: [ProductSortOn]?) {
            self.filters = filters

            self.sortOn = sortOn
        }

        public func duplicate() -> GetCollectionQueryOptionResponse {
            let dict = self.dictionary!
            let copy = GetCollectionQueryOptionResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }

    /*
         Model: UserInfo
         Used By: Catalog
     */

    class UserInfo: Codable {
        public var uid: String?

        public var email: String?

        public var username: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case email

            case username

            case userId = "user_id"
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.uid = uid

            self.email = email

            self.username = username

            self.userId = userId
        }

        public func duplicate() -> UserInfo {
            let dict = self.dictionary!
            let copy = UserInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: CollectionImage
         Used By: Catalog
     */

    class CollectionImage: Codable {
        public var aspectRatio: String

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case url
        }

        public init(aspectRatio: String, url: String) {
            self.aspectRatio = aspectRatio

            self.url = url
        }

        public func duplicate() -> CollectionImage {
            let dict = self.dictionary!
            let copy = CollectionImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: CollectionBadge
         Used By: Catalog
     */

    class CollectionBadge: Codable {
        public var text: String?

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case text

            case color
        }

        public init(color: String?, text: String?) {
            self.text = text

            self.color = color
        }

        public func duplicate() -> CollectionBadge {
            let dict = self.dictionary!
            let copy = CollectionBadge(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(color, forKey: .color)
        }
    }

    /*
         Model: Schedule
         Used By: Catalog
     */

    class Schedule: Codable {
        public var duration: Int?

        public var end: String?

        public var start: String?

        public var cron: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case end

            case start

            case cron
        }

        public init(cron: String?, duration: Int?, end: String?, start: String?) {
            self.duration = duration

            self.end = end

            self.start = start

            self.cron = cron
        }

        public func duplicate() -> Schedule {
            let dict = self.dictionary!
            let copy = Schedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(duration, forKey: .duration)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(cron, forKey: .cron)
        }
    }

    /*
         Model: SeoDetail
         Used By: Catalog
     */

    class SeoDetail: Codable {
        public var description: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case title
        }

        public init(description: String?, title: String?) {
            self.description = description

            self.title = title
        }

        public func duplicate() -> SeoDetail {
            let dict = self.dictionary!
            let copy = SeoDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: CollectionBanner
         Used By: Catalog
     */

    class CollectionBanner: Codable {
        public var landscape: CollectionImage

        public var portrait: CollectionImage

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: CollectionImage, portrait: CollectionImage) {
            self.landscape = landscape

            self.portrait = portrait
        }

        public func duplicate() -> CollectionBanner {
            let dict = self.dictionary!
            let copy = CollectionBanner(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(CollectionImage.self, forKey: .landscape)

            portrait = try container.decode(CollectionImage.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }

    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var visibleFacetsKeys: [String]?

        public var isActive: Bool?

        public var modifiedBy: UserInfo?

        public var logo: CollectionImage

        public var localeLanguage: [String: Any]?

        public var allowSort: Bool?

        public var sortOn: String?

        public var query: [String: Any]?

        public var badge: CollectionBadge?

        public var description: String?

        public var appId: String

        public var schedule: Schedule?

        public var createdBy: UserInfo?

        public var seo: SeoDetail?

        public var allowFacets: Bool?

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var banners: CollectionBanner

        public var slug: String

        public var name: String

        public var type: String

        public var isVisible: Bool?

        public var published: Bool?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case visibleFacetsKeys = "visible_facets_keys"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case logo

            case localeLanguage = "_locale_language"

            case allowSort = "allow_sort"

            case sortOn = "sort_on"

            case query

            case badge

            case description

            case appId = "app_id"

            case schedule = "_schedule"

            case createdBy = "created_by"

            case seo

            case allowFacets = "allow_facets"

            case customJson = "_custom_json"

            case tags

            case banners

            case slug

            case name

            case type

            case isVisible = "is_visible"

            case published

            case meta
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String, badge: CollectionBadge?, banners: CollectionBanner, createdBy: UserInfo?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage, meta: [String: Any]?, modifiedBy: UserInfo?, name: String, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String, sortOn: String?, tags: [String]?, type: String, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.visibleFacetsKeys = visibleFacetsKeys

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.localeLanguage = localeLanguage

            self.allowSort = allowSort

            self.sortOn = sortOn

            self.query = query

            self.badge = badge

            self.description = description

            self.appId = appId

            self.schedule = schedule

            self.createdBy = createdBy

            self.seo = seo

            self.allowFacets = allowFacets

            self.customJson = customJson

            self.tags = tags

            self.banners = banners

            self.slug = slug

            self.name = name

            self.type = type

            self.isVisible = isVisible

            self.published = published

            self.meta = meta
        }

        public func duplicate() -> CreateCollection {
            let dict = self.dictionary!
            let copy = CreateCollection(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: BannerImage
         Used By: Catalog
     */

    class BannerImage: Codable {
        public var aspectRatio: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case url
        }

        public init(aspectRatio: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.url = url
        }

        public func duplicate() -> BannerImage {
            let dict = self.dictionary!
            let copy = BannerImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: ImageUrls
         Used By: Catalog
     */

    class ImageUrls: Codable {
        public var landscape: BannerImage?

        public var portrait: BannerImage?

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: BannerImage?, portrait: BannerImage?) {
            self.landscape = landscape

            self.portrait = portrait
        }

        public func duplicate() -> ImageUrls {
            let dict = self.dictionary!
            let copy = ImageUrls(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landscape = try container.decode(BannerImage.self, forKey: .landscape)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                portrait = try container.decode(BannerImage.self, forKey: .portrait)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }

    /*
         Model: CollectionCreateResponse
         Used By: Catalog
     */

    class CollectionCreateResponse: Codable {
        public var allowFacets: Bool?

        public var tag: [String]?

        public var visibleFacetsKeys: [String]?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var cron: [String: Any]?

        public var type: String?

        public var logo: BannerImage?

        public var badge: [String: Any]?

        public var allowSort: Bool?

        public var query: [String: Any]?

        public var banners: ImageUrls?

        public var description: String?

        public var slug: String?

        public var name: String?

        public var appId: String?

        public var schedule: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case allowFacets = "allow_facets"

            case tag

            case visibleFacetsKeys = "visible_facets_keys"

            case meta

            case isActive = "is_active"

            case cron

            case type

            case logo

            case badge

            case allowSort = "allow_sort"

            case query

            case banners

            case description

            case slug

            case name

            case appId = "app_id"

            case schedule = "_schedule"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: BannerImage?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.allowFacets = allowFacets

            self.tag = tag

            self.visibleFacetsKeys = visibleFacetsKeys

            self.meta = meta

            self.isActive = isActive

            self.cron = cron

            self.type = type

            self.logo = logo

            self.badge = badge

            self.allowSort = allowSort

            self.query = query

            self.banners = banners

            self.description = description

            self.slug = slug

            self.name = name

            self.appId = appId

            self.schedule = schedule
        }

        public func duplicate() -> CollectionCreateResponse {
            let dict = self.dictionary!
            let copy = CollectionCreateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(BannerImage.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: CollectionListingFilterTag
         Used By: Catalog
     */

    class CollectionListingFilterTag: Codable {
        public var display: String?

        public var isSelected: Bool?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case isSelected = "is_selected"

            case name
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.display = display

            self.isSelected = isSelected

            self.name = name
        }

        public func duplicate() -> CollectionListingFilterTag {
            let dict = self.dictionary!
            let copy = CollectionListingFilterTag(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CollectionListingFilterType
         Used By: Catalog
     */

    class CollectionListingFilterType: Codable {
        public var display: String?

        public var isSelected: Bool?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case isSelected = "is_selected"

            case name
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.display = display

            self.isSelected = isSelected

            self.name = name
        }

        public func duplicate() -> CollectionListingFilterType {
            let dict = self.dictionary!
            let copy = CollectionListingFilterType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CollectionListingFilter
         Used By: Catalog
     */

    class CollectionListingFilter: Codable {
        public var tags: [CollectionListingFilterTag]?

        public var type: [CollectionListingFilterType]?

        public enum CodingKeys: String, CodingKey {
            case tags

            case type
        }

        public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
            self.tags = tags

            self.type = type
        }

        public func duplicate() -> CollectionListingFilter {
            let dict = self.dictionary!
            let copy = CollectionListingFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode([CollectionListingFilterType].self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var url: String

        public var meta: [String: Any]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case meta

            case type
        }

        public init(meta: [String: Any]?, type: String?, url: String) {
            self.url = url

            self.meta = meta

            self.type = type
        }

        public func duplicate() -> Media1 {
            let dict = self.dictionary!
            let copy = Media1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */

    class GetCollectionDetailNest: Codable {
        public var visibleFacetsKeys: [String]?

        public var isActive: Bool?

        public var logo: Media1?

        public var allowSort: Bool?

        public var query: [String: Any]?

        public var badge: [String: Any]?

        public var description: String?

        public var appId: String?

        public var schedule: [String: Any]?

        public var allowFacets: Bool?

        public var tag: [String]?

        public var cron: [String: Any]?

        public var uid: String?

        public var banners: ImageUrls?

        public var slug: String?

        public var name: String?

        public var action: Action?

        public var type: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case visibleFacetsKeys = "visible_facets_keys"

            case isActive = "is_active"

            case logo

            case allowSort = "allow_sort"

            case query

            case badge

            case description

            case appId = "app_id"

            case schedule = "_schedule"

            case allowFacets = "allow_facets"

            case tag

            case cron

            case uid

            case banners

            case slug

            case name

            case action

            case type

            case meta
        }

        public init(action: Action?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.visibleFacetsKeys = visibleFacetsKeys

            self.isActive = isActive

            self.logo = logo

            self.allowSort = allowSort

            self.query = query

            self.badge = badge

            self.description = description

            self.appId = appId

            self.schedule = schedule

            self.allowFacets = allowFacets

            self.tag = tag

            self.cron = cron

            self.uid = uid

            self.banners = banners

            self.slug = slug

            self.name = name

            self.action = action

            self.type = type

            self.meta = meta
        }

        public func duplicate() -> GetCollectionDetailNest {
            let dict = self.dictionary!
            let copy = GetCollectionDetailNest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media1.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: GetCollectionListingResponse
         Used By: Catalog
     */

    class GetCollectionListingResponse: Codable {
        public var filters: CollectionListingFilter?

        public var page: Page?

        public var items: [GetCollectionDetailNest]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case page

            case items
        }

        public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page?) {
            self.filters = filters

            self.page = page

            self.items = items
        }

        public func duplicate() -> GetCollectionListingResponse {
            let dict = self.dictionary!
            let copy = GetCollectionListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(CollectionListingFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetCollectionDetailNest].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: CollectionDetailResponse
         Used By: Catalog
     */

    class CollectionDetailResponse: Codable {
        public var allowFacets: Bool?

        public var tag: [String]?

        public var visibleFacetsKeys: [String]?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var cron: [String: Any]?

        public var type: String?

        public var logo: Media1?

        public var badge: [String: Any]?

        public var allowSort: Bool?

        public var query: [String: Any]?

        public var banners: ImageUrls?

        public var description: String?

        public var slug: String?

        public var name: String?

        public var appId: String?

        public var schedule: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case allowFacets = "allow_facets"

            case tag

            case visibleFacetsKeys = "visible_facets_keys"

            case meta

            case isActive = "is_active"

            case cron

            case type

            case logo

            case badge

            case allowSort = "allow_sort"

            case query

            case banners

            case description

            case slug

            case name

            case appId = "app_id"

            case schedule = "_schedule"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.allowFacets = allowFacets

            self.tag = tag

            self.visibleFacetsKeys = visibleFacetsKeys

            self.meta = meta

            self.isActive = isActive

            self.cron = cron

            self.type = type

            self.logo = logo

            self.badge = badge

            self.allowSort = allowSort

            self.query = query

            self.banners = banners

            self.description = description

            self.slug = slug

            self.name = name

            self.appId = appId

            self.schedule = schedule
        }

        public func duplicate() -> CollectionDetailResponse {
            let dict = self.dictionary!
            let copy = CollectionDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media1.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: UpdateCollection
         Used By: Catalog
     */

    class UpdateCollection: Codable {
        public var visibleFacetsKeys: [String]?

        public var isActive: Bool?

        public var modifiedBy: UserInfo?

        public var logo: CollectionImage?

        public var localeLanguage: [String: Any]?

        public var allowSort: Bool?

        public var sortOn: String?

        public var query: [String: Any]?

        public var badge: CollectionBadge?

        public var description: String?

        public var schedule: Schedule?

        public var seo: SeoDetail?

        public var allowFacets: Bool?

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var banners: CollectionBanner?

        public var slug: String?

        public var name: String?

        public var isVisible: Bool?

        public var published: Bool?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case visibleFacetsKeys = "visible_facets_keys"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case logo

            case localeLanguage = "_locale_language"

            case allowSort = "allow_sort"

            case sortOn = "sort_on"

            case query

            case badge

            case description

            case schedule = "_schedule"

            case seo

            case allowFacets = "allow_facets"

            case customJson = "_custom_json"

            case tags

            case banners

            case slug

            case name

            case isVisible = "is_visible"

            case published

            case meta
        }

        public init(allowFacets: Bool?, allowSort: Bool?, badge: CollectionBadge?, banners: CollectionBanner?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage?, meta: [String: Any]?, modifiedBy: UserInfo?, name: String?, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String?, sortOn: String?, tags: [String]?, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.visibleFacetsKeys = visibleFacetsKeys

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.localeLanguage = localeLanguage

            self.allowSort = allowSort

            self.sortOn = sortOn

            self.query = query

            self.badge = badge

            self.description = description

            self.schedule = schedule

            self.seo = seo

            self.allowFacets = allowFacets

            self.customJson = customJson

            self.tags = tags

            self.banners = banners

            self.slug = slug

            self.name = name

            self.isVisible = isVisible

            self.published = published

            self.meta = meta
        }

        public func duplicate() -> UpdateCollection {
            let dict = self.dictionary!
            let copy = UpdateCollection(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(CollectionImage.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(CollectionBanner.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: CollectionItemRequest
         Used By: Catalog
     */

    class CollectionItemRequest: Codable {
        public var pageSize: Int

        public var pageNo: Int

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case pageNo = "page_no"
        }

        public init(pageNo: Int, pageSize: Int) {
            self.pageSize = pageSize

            self.pageNo = pageNo
        }

        public func duplicate() -> CollectionItemRequest {
            let dict = self.dictionary!
            let copy = CollectionItemRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            pageNo = try container.decode(Int.self, forKey: .pageNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
        }
    }

    /*
         Model: UpdatedResponse
         Used By: Catalog
     */

    class UpdatedResponse: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> UpdatedResponse {
            let dict = self.dictionary!
            let copy = UpdatedResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var currencySymbol: String?

        public var min: Double?

        public var max: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case min

            case max

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
            self.currencySymbol = currencySymbol

            self.min = min

            self.max = max

            self.currencyCode = currencyCode
        }

        public func duplicate() -> Price1 {
            let dict = self.dictionary!
            let copy = Price1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }

    /*
         Model: ProductListingPrice
         Used By: Catalog
     */

    class ProductListingPrice: Codable {
        public var effective: Price1?

        public var marked: Price1?

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked
        }

        public init(effective: Price1?, marked: Price1?) {
            self.effective = effective

            self.marked = marked
        }

        public func duplicate() -> ProductListingPrice {
            let dict = self.dictionary!
            let copy = ProductListingPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Price1.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Price1.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }

    /*
         Model: ProductBrand
         Used By: Catalog
     */

    class ProductBrand: Codable {
        public var uid: Int?

        public var logo: Media1?

        public var action: Action?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case logo

            case action

            case name
        }

        public init(action: Action?, logo: Media1?, name: String?, uid: Int?) {
            self.uid = uid

            self.logo = logo

            self.action = action

            self.name = name
        }

        public func duplicate() -> ProductBrand {
            let dict = self.dictionary!
            let copy = ProductBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media1.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ProductDetailAttribute
         Used By: Catalog
     */

    class ProductDetailAttribute: Codable {
        public var key: String?

        public var value: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case value

            case type
        }

        public init(key: String?, type: String?, value: String?) {
            self.key = key

            self.value = value

            self.type = type
        }

        public func duplicate() -> ProductDetailAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailAttribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ProductDetailGroupedAttribute
         Used By: Catalog
     */

    class ProductDetailGroupedAttribute: Codable {
        public var title: String?

        public var details: [ProductDetailAttribute]?

        public enum CodingKeys: String, CodingKey {
            case title

            case details
        }

        public init(details: [ProductDetailAttribute]?, title: String?) {
            self.title = title

            self.details = details
        }

        public func duplicate() -> ProductDetailGroupedAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailGroupedAttribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode([ProductDetailAttribute].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(details, forKey: .details)
        }
    }

    /*
         Model: ProductListingDetail
         Used By: Catalog
     */

    class ProductListingDetail: Codable {
        public var itemType: String?

        public var highlights: [String]?

        public var discount: String?

        public var sellable: Bool?

        public var shortDescription: String?

        public var description: String?

        public var attributes: [String: Any]?

        public var price: ProductListingPrice?

        public var uid: Int?

        public var rating: Double?

        public var slug: String

        public var name: String?

        public var teaserTag: [String: Any]?

        public var similars: [String]?

        public var type: String?

        public var brand: ProductBrand?

        public var itemCode: String?

        public var hasVariant: Bool?

        public var productOnlineDate: String?

        public var medias: [Media1]?

        public var promoMeta: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var tryouts: [String]?

        public var color: String?

        public var imageNature: String?

        public var ratingCount: Int?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case highlights

            case discount

            case sellable

            case shortDescription = "short_description"

            case description

            case attributes

            case price

            case uid

            case rating

            case slug

            case name

            case teaserTag = "teaser_tag"

            case similars

            case type

            case brand

            case itemCode = "item_code"

            case hasVariant = "has_variant"

            case productOnlineDate = "product_online_date"

            case medias

            case promoMeta = "promo_meta"

            case groupedAttributes = "grouped_attributes"

            case tryouts

            case color

            case imageNature = "image_nature"

            case ratingCount = "rating_count"
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.itemType = itemType

            self.highlights = highlights

            self.discount = discount

            self.sellable = sellable

            self.shortDescription = shortDescription

            self.description = description

            self.attributes = attributes

            self.price = price

            self.uid = uid

            self.rating = rating

            self.slug = slug

            self.name = name

            self.teaserTag = teaserTag

            self.similars = similars

            self.type = type

            self.brand = brand

            self.itemCode = itemCode

            self.hasVariant = hasVariant

            self.productOnlineDate = productOnlineDate

            self.medias = medias

            self.promoMeta = promoMeta

            self.groupedAttributes = groupedAttributes

            self.tryouts = tryouts

            self.color = color

            self.imageNature = imageNature

            self.ratingCount = ratingCount
        }

        public func duplicate() -> ProductListingDetail {
            let dict = self.dictionary!
            let copy = ProductListingDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media1].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        }
    }

    /*
         Model: GetCollectionItemsResponse
         Used By: Catalog
     */

    class GetCollectionItemsResponse: Codable {
        public var filters: [ProductFilters]?

        public var page: Page?

        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case page

            case items

            case sortOn = "sort_on"
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?) {
            self.filters = filters

            self.page = page

            self.items = items

            self.sortOn = sortOn
        }

        public func duplicate() -> GetCollectionItemsResponse {
            let dict = self.dictionary!
            let copy = GetCollectionItemsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }

    /*
         Model: CatalogInsightItem
         Used By: Catalog
     */

    class CatalogInsightItem: Codable {
        public var outOfStockCount: Int?

        public var count: Int?

        public var sellableCount: Int?

        public enum CodingKeys: String, CodingKey {
            case outOfStockCount = "out_of_stock_count"

            case count

            case sellableCount = "sellable_count"
        }

        public init(count: Int?, outOfStockCount: Int?, sellableCount: Int?) {
            self.outOfStockCount = outOfStockCount

            self.count = count

            self.sellableCount = sellableCount
        }

        public func duplicate() -> CatalogInsightItem {
            let dict = self.dictionary!
            let copy = CatalogInsightItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                outOfStockCount = try container.decode(Int.self, forKey: .outOfStockCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellableCount = try container.decode(Int.self, forKey: .sellableCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outOfStockCount, forKey: .outOfStockCount)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(sellableCount, forKey: .sellableCount)
        }
    }

    /*
         Model: CatalogInsightBrand
         Used By: Catalog
     */

    class CatalogInsightBrand: Codable {
        public var availableSizes: Int?

        public var totalArticles: Int?

        public var totalSizes: Int?

        public var articleFreshness: Int?

        public var availableArticles: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case availableSizes = "available_sizes"

            case totalArticles = "total_articles"

            case totalSizes = "total_sizes"

            case articleFreshness = "article_freshness"

            case availableArticles = "available_articles"

            case name
        }

        public init(articleFreshness: Int?, availableArticles: Int?, availableSizes: Int?, name: String?, totalArticles: Int?, totalSizes: Int?) {
            self.availableSizes = availableSizes

            self.totalArticles = totalArticles

            self.totalSizes = totalSizes

            self.articleFreshness = articleFreshness

            self.availableArticles = availableArticles

            self.name = name
        }

        public func duplicate() -> CatalogInsightBrand {
            let dict = self.dictionary!
            let copy = CatalogInsightBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availableSizes = try container.decode(Int.self, forKey: .availableSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalArticles = try container.decode(Int.self, forKey: .totalArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalSizes = try container.decode(Int.self, forKey: .totalSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleFreshness = try container.decode(Int.self, forKey: .articleFreshness)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableArticles = try container.decode(Int.self, forKey: .availableArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)

            try? container.encodeIfPresent(totalArticles, forKey: .totalArticles)

            try? container.encodeIfPresent(totalSizes, forKey: .totalSizes)

            try? container.encodeIfPresent(articleFreshness, forKey: .articleFreshness)

            try? container.encodeIfPresent(availableArticles, forKey: .availableArticles)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CatalogInsightResponse
         Used By: Catalog
     */

    class CatalogInsightResponse: Codable {
        public var item: CatalogInsightItem?

        public var brandDistribution: CatalogInsightBrand?

        public enum CodingKeys: String, CodingKey {
            case item

            case brandDistribution = "brand_distribution"
        }

        public init(brandDistribution: CatalogInsightBrand?, item: CatalogInsightItem?) {
            self.item = item

            self.brandDistribution = brandDistribution
        }

        public func duplicate() -> CatalogInsightResponse {
            let dict = self.dictionary!
            let copy = CatalogInsightResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(CatalogInsightItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandDistribution = try container.decode(CatalogInsightBrand.self, forKey: .brandDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(brandDistribution, forKey: .brandDistribution)
        }
    }

    /*
         Model: CrossSellingData
         Used By: Catalog
     */

    class CrossSellingData: Codable {
        public var articles: Int?

        public var products: Int?

        public enum CodingKeys: String, CodingKey {
            case articles

            case products
        }

        public init(articles: Int?, products: Int?) {
            self.articles = articles

            self.products = products
        }

        public func duplicate() -> CrossSellingData {
            let dict = self.dictionary!
            let copy = CrossSellingData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articles = try container.decode(Int.self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode(Int.self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }

    /*
         Model: CrossSellingResponse
         Used By: Catalog
     */

    class CrossSellingResponse: Codable {
        public var data: CrossSellingData?

        public var brandDistribution: CatalogInsightBrand?

        public enum CodingKeys: String, CodingKey {
            case data

            case brandDistribution = "brand_distribution"
        }

        public init(brandDistribution: CatalogInsightBrand?, data: CrossSellingData?) {
            self.data = data

            self.brandDistribution = brandDistribution
        }

        public func duplicate() -> CrossSellingResponse {
            let dict = self.dictionary!
            let copy = CrossSellingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(CrossSellingData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandDistribution = try container.decode(CatalogInsightBrand.self, forKey: .brandDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(brandDistribution, forKey: .brandDistribution)
        }
    }

    /*
         Model: OptInPostRequest
         Used By: Catalog
     */

    class OptInPostRequest: Codable {
        public var enabled: Bool?

        public var brandIds: [Int]?

        public var optLevel: String

        public var storeIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]?, enabled: Bool?, optLevel: String, storeIds: [Int]?) {
            self.enabled = enabled

            self.brandIds = brandIds

            self.optLevel = optLevel

            self.storeIds = storeIds
        }

        public func duplicate() -> OptInPostRequest {
            let dict = self.dictionary!
            let copy = OptInPostRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }

    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var storeIds: [Int]

        public var companyId: Int

        public var enabled: Bool

        public var brandIds: [Int]

        public var modifiedOn: Int

        public var platform: String

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var optLevel: String

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case companyId = "company_id"

            case enabled

            case brandIds = "brand_ids"

            case modifiedOn = "modified_on"

            case platform

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case optLevel = "opt_level"

            case createdBy = "created_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]?, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]?, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.storeIds = storeIds

            self.companyId = companyId

            self.enabled = enabled

            self.brandIds = brandIds

            self.modifiedOn = modifiedOn

            self.platform = platform

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.optLevel = optLevel

            self.createdBy = createdBy
        }

        public func duplicate() -> CompanyOptIn {
            let dict = self.dictionary!
            let copy = CompanyOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: GetOptInPlatform
         Used By: Catalog
     */

    class GetOptInPlatform: Codable {
        public var page: Page

        public var items: [CompanyOptIn]

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [CompanyOptIn], page: Page) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> GetOptInPlatform {
            let dict = self.dictionary!
            let copy = GetOptInPlatform(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([CompanyOptIn].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: OptinCompanyDetail
         Used By: Catalog
     */

    class OptinCompanyDetail: Codable {
        public var uid: Int?

        public var businessType: String?

        public var name: String?

        public var companyType: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case businessType = "business_type"

            case name

            case companyType = "company_type"
        }

        public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
            self.uid = uid

            self.businessType = businessType

            self.name = name

            self.companyType = companyType
        }

        public func duplicate() -> OptinCompanyDetail {
            let dict = self.dictionary!
            let copy = OptinCompanyDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyType, forKey: .companyType)
        }
    }

    /*
         Model: CompanyBrandDetail
         Used By: Catalog
     */

    class CompanyBrandDetail: Codable {
        public var companyId: Int?

        public var brandId: Int?

        public var totalArticle: Int?

        public var brandName: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case brandId = "brand_id"

            case totalArticle = "total_article"

            case brandName = "brand_name"
        }

        public init(brandId: Int?, brandName: String?, companyId: Int?, totalArticle: Int?) {
            self.companyId = companyId

            self.brandId = brandId

            self.totalArticle = totalArticle

            self.brandName = brandName
        }

        public func duplicate() -> CompanyBrandDetail {
            let dict = self.dictionary!
            let copy = CompanyBrandDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalArticle = try container.decode(Int.self, forKey: .totalArticle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }

    /*
         Model: OptinCompanyBrandDetailsView
         Used By: Catalog
     */

    class OptinCompanyBrandDetailsView: Codable {
        public var page: Page?

        public var items: [CompanyBrandDetail]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [CompanyBrandDetail]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> OptinCompanyBrandDetailsView {
            let dict = self.dictionary!
            let copy = OptinCompanyBrandDetailsView(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CompanyBrandDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: OptinCompanyMetrics
         Used By: Catalog
     */

    class OptinCompanyMetrics: Codable {
        public var company: String?

        public var store: Int?

        public var brand: Int?

        public enum CodingKeys: String, CodingKey {
            case company

            case store

            case brand
        }

        public init(brand: Int?, company: String?, store: Int?) {
            self.company = company

            self.store = store

            self.brand = brand
        }

        public func duplicate() -> OptinCompanyMetrics {
            let dict = self.dictionary!
            let copy = OptinCompanyMetrics(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(Int.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(Int.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var modifiedOn: String?

        public var documents: [[String: Any]]?

        public var displayName: String?

        public var companyId: Int?

        public var storeCode: String?

        public var uid: Int?

        public var createdOn: String?

        public var storeType: String?

        public var additionalContacts: [[String: Any]]?

        public var timing: [String: Any]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case documents

            case displayName = "display_name"

            case companyId = "company_id"

            case storeCode = "store_code"

            case uid

            case createdOn = "created_on"

            case storeType = "store_type"

            case additionalContacts = "additional_contacts"

            case timing

            case name
        }

        public init(additionalContacts: [[String: Any]]?, companyId: Int?, createdOn: String?, displayName: String?, documents: [[String: Any]]?, modifiedOn: String?, name: String?, storeCode: String?, storeType: String?, timing: [String: Any]?, uid: Int?) {
            self.modifiedOn = modifiedOn

            self.documents = documents

            self.displayName = displayName

            self.companyId = companyId

            self.storeCode = storeCode

            self.uid = uid

            self.createdOn = createdOn

            self.storeType = storeType

            self.additionalContacts = additionalContacts

            self.timing = timing

            self.name = name
        }

        public func duplicate() -> StoreDetail {
            let dict = self.dictionary!
            let copy = StoreDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([[String: Any]].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                additionalContacts = try container.decode([[String: Any]].self, forKey: .additionalContacts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([String: Any].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: OptinStoreDetails
         Used By: Catalog
     */

    class OptinStoreDetails: Codable {
        public var page: Page?

        public var items: [StoreDetail]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [StoreDetail]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> OptinStoreDetails {
            let dict = self.dictionary!
            let copy = OptinStoreDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([StoreDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: AttributeSchemaRange
         Used By: Catalog
     */

    class AttributeSchemaRange: Codable {
        public var min: Int?

        public var max: Int?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: Int?, min: Int?) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> AttributeSchemaRange {
            let dict = self.dictionary!
            let copy = AttributeSchemaRange(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: AttributeMaster
         Used By: Catalog
     */

    class AttributeMaster: Codable {
        public var multi: Bool?

        public var range: AttributeSchemaRange?

        public var allowedValues: [String]?

        public var type: String

        public var format: String?

        public var mandatory: Bool?

        public enum CodingKeys: String, CodingKey {
            case multi

            case range

            case allowedValues = "allowed_values"

            case type

            case format

            case mandatory
        }

        public init(allowedValues: [String]?, format: String?, mandatory: Bool?, multi: Bool?, range: AttributeSchemaRange?, type: String) {
            self.multi = multi

            self.range = range

            self.allowedValues = allowedValues

            self.type = type

            self.format = format

            self.mandatory = mandatory
        }

        public func duplicate() -> AttributeMaster {
            let dict = self.dictionary!
            let copy = AttributeMaster(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multi = try container.decode(Bool.self, forKey: .multi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                range = try container.decode(AttributeSchemaRange.self, forKey: .range)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowedValues = try container.decode([String].self, forKey: .allowedValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                format = try container.decode(String.self, forKey: .format)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mandatory = try container.decode(Bool.self, forKey: .mandatory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multi, forKey: .multi)

            try? container.encodeIfPresent(range, forKey: .range)

            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(format, forKey: .format)

            try? container.encodeIfPresent(mandatory, forKey: .mandatory)
        }
    }

    /*
         Model: AttributeMasterDetails
         Used By: Catalog
     */

    class AttributeMasterDetails: Codable {
        public var displayType: String

        public enum CodingKeys: String, CodingKey {
            case displayType = "display_type"
        }

        public init(displayType: String) {
            self.displayType = displayType
        }

        public func duplicate() -> AttributeMasterDetails {
            let dict = self.dictionary!
            let copy = AttributeMasterDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayType = try container.decode(String.self, forKey: .displayType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayType, forKey: .displayType)
        }
    }

    /*
         Model: AttributeMasterFilter
         Used By: Catalog
     */

    class AttributeMasterFilter: Codable {
        public var priority: Int?

        public var dependsOn: [String]?

        public var indexing: Bool

        public enum CodingKeys: String, CodingKey {
            case priority

            case dependsOn = "depends_on"

            case indexing
        }

        public init(dependsOn: [String]?, indexing: Bool, priority: Int?) {
            self.priority = priority

            self.dependsOn = dependsOn

            self.indexing = indexing
        }

        public func duplicate() -> AttributeMasterFilter {
            let dict = self.dictionary!
            let copy = AttributeMasterFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dependsOn = try container.decode([String].self, forKey: .dependsOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            indexing = try container.decode(Bool.self, forKey: .indexing)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)

            try? container.encodeIfPresent(indexing, forKey: .indexing)
        }
    }

    /*
         Model: AttributeMasterMandatoryDetails
         Used By: Catalog
     */

    class AttributeMasterMandatoryDetails: Codable {
        public var l3Keys: [String]?

        public enum CodingKeys: String, CodingKey {
            case l3Keys = "l3_keys"
        }

        public init(l3Keys: [String]?) {
            self.l3Keys = l3Keys
        }

        public func duplicate() -> AttributeMasterMandatoryDetails {
            let dict = self.dictionary!
            let copy = AttributeMasterMandatoryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l3Keys = try container.decode([String].self, forKey: .l3Keys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l3Keys, forKey: .l3Keys)
        }
    }

    /*
         Model: AttributeMasterMeta
         Used By: Catalog
     */

    class AttributeMasterMeta: Codable {
        public var enriched: Bool?

        public var mandatoryDetails: AttributeMasterMandatoryDetails

        public enum CodingKeys: String, CodingKey {
            case enriched

            case mandatoryDetails = "mandatory_details"
        }

        public init(enriched: Bool?, mandatoryDetails: AttributeMasterMandatoryDetails) {
            self.enriched = enriched

            self.mandatoryDetails = mandatoryDetails
        }

        public func duplicate() -> AttributeMasterMeta {
            let dict = self.dictionary!
            let copy = AttributeMasterMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enriched = try container.decode(Bool.self, forKey: .enriched)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mandatoryDetails = try container.decode(AttributeMasterMandatoryDetails.self, forKey: .mandatoryDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enriched, forKey: .enriched)

            try? container.encodeIfPresent(mandatoryDetails, forKey: .mandatoryDetails)
        }
    }

    /*
         Model: GenderDetail
         Used By: Catalog
     */

    class GenderDetail: Codable {
        public var schema: AttributeMaster?

        public var enabledForEndConsumer: Bool?

        public var details: AttributeMasterDetails?

        public var id: String?

        public var isNested: Bool?

        public var logo: String?

        public var filters: AttributeMasterFilter?

        public var departments: [String]?

        public var description: String?

        public var slug: String?

        public var name: String?

        public var meta: AttributeMasterMeta?

        public enum CodingKeys: String, CodingKey {
            case schema

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case details

            case id

            case isNested = "is_nested"

            case logo

            case filters

            case departments

            case description

            case slug

            case name

            case meta
        }

        public init(departments: [String]?, description: String?, details: AttributeMasterDetails?, enabledForEndConsumer: Bool?, filters: AttributeMasterFilter?, id: String?, isNested: Bool?, logo: String?, meta: AttributeMasterMeta?, name: String?, schema: AttributeMaster?, slug: String?) {
            self.schema = schema

            self.enabledForEndConsumer = enabledForEndConsumer

            self.details = details

            self.id = id

            self.isNested = isNested

            self.logo = logo

            self.filters = filters

            self.departments = departments

            self.description = description

            self.slug = slug

            self.name = name

            self.meta = meta
        }

        public func duplicate() -> GenderDetail {
            let dict = self.dictionary!
            let copy = GenderDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schema = try container.decode(AttributeMaster.self, forKey: .schema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode(AttributeMasterDetails.self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isNested = try container.decode(Bool.self, forKey: .isNested)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(AttributeMasterMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: ProdcutTemplateCategoriesResponse
         Used By: Catalog
     */

    class ProdcutTemplateCategoriesResponse: Codable {
        public var page: Page?

        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [[String: Any]]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> ProdcutTemplateCategoriesResponse {
            let dict = self.dictionary!
            let copy = ProdcutTemplateCategoriesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: PTErrorResponse
         Used By: Catalog
     */

    class PTErrorResponse: Codable {
        public var status: Int?

        public var code: String?

        public var errors: [String: Any]?

        public var message: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case status

            case code

            case errors

            case message

            case meta
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.status = status

            self.code = code

            self.errors = errors

            self.message = message

            self.meta = meta
        }

        public func duplicate() -> PTErrorResponse {
            let dict = self.dictionary!
            let copy = PTErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: UserSerializer
         Used By: Catalog
     */

    class UserSerializer: Codable {
        public var username: String?

        public var contact: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case contact

            case userId = "user_id"
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.username = username

            self.contact = contact

            self.userId = userId
        }

        public func duplicate() -> UserSerializer {
            let dict = self.dictionary!
            let copy = UserSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: GetDepartment
         Used By: Catalog
     */

    class GetDepartment: Codable {
        public var itemType: String?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var synonyms: [String]?

        public var modifiedBy: UserSerializer?

        public var uid: Int?

        public var logo: String?

        public var createdOn: String?

        public var pageSize: Int?

        public var pageNo: Int?

        public var search: String?

        public var slug: String?

        public var name: String?

        public var priorityOrder: Int?

        public var createdBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case synonyms

            case modifiedBy = "modified_by"

            case uid

            case logo

            case createdOn = "created_on"

            case pageSize = "page_size"

            case pageNo = "page_no"

            case search

            case slug

            case name

            case priorityOrder = "priority_order"

            case createdBy = "created_by"
        }

        public init(createdBy: UserSerializer?, createdOn: String?, isActive: Bool?, itemType: String?, logo: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, pageNo: Int?, pageSize: Int?, priorityOrder: Int?, search: String?, slug: String?, synonyms: [String]?, uid: Int?) {
            self.itemType = itemType

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.synonyms = synonyms

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.logo = logo

            self.createdOn = createdOn

            self.pageSize = pageSize

            self.pageNo = pageNo

            self.search = search

            self.slug = slug

            self.name = name

            self.priorityOrder = priorityOrder

            self.createdBy = createdBy
        }

        public func duplicate() -> GetDepartment {
            let dict = self.dictionary!
            let copy = GetDepartment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageSize = try container.decode(Int.self, forKey: .pageSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageNo = try container.decode(Int.self, forKey: .pageNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                search = try container.decode(String.self, forKey: .search)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: DepartmentsResponse
         Used By: Catalog
     */

    class DepartmentsResponse: Codable {
        public var page: Page?

        public var items: [GetDepartment]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [GetDepartment]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> DepartmentsResponse {
            let dict = self.dictionary!
            let copy = DepartmentsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetDepartment].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: DepartmentErrorResponse
         Used By: Catalog
     */

    class DepartmentErrorResponse: Codable {
        public var status: Int?

        public var code: String?

        public var errors: [String: Any]?

        public var message: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case status

            case code

            case errors

            case message

            case meta
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.status = status

            self.code = code

            self.errors = errors

            self.message = message

            self.meta = meta
        }

        public func duplicate() -> DepartmentErrorResponse {
            let dict = self.dictionary!
            let copy = DepartmentErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var isArchived: Bool?

        public var attributes: [String]?

        public var modifiedOn: String?

        public var tag: String?

        public var isActive: Bool?

        public var modifiedBy: [String: Any]?

        public var logo: String?

        public var categories: [String]?

        public var createdOn: String?

        public var departments: [String]?

        public var isPhysical: Bool

        public var isExpirable: Bool

        public var description: String?

        public var slug: String

        public var name: String?

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isArchived = "is_archived"

            case attributes

            case modifiedOn = "modified_on"

            case tag

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case logo

            case categories

            case createdOn = "created_on"

            case departments

            case isPhysical = "is_physical"

            case isExpirable = "is_expirable"

            case description

            case slug

            case name

            case createdBy = "created_by"
        }

        public init(attributes: [String]?, categories: [String]?, createdBy: [String: Any]?, createdOn: String?, departments: [String]?, description: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, slug: String, tag: String?) {
            self.isArchived = isArchived

            self.attributes = attributes

            self.modifiedOn = modifiedOn

            self.tag = tag

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.categories = categories

            self.createdOn = createdOn

            self.departments = departments

            self.isPhysical = isPhysical

            self.isExpirable = isExpirable

            self.description = description

            self.slug = slug

            self.name = name

            self.createdBy = createdBy
        }

        public func duplicate() -> ProductTemplate {
            let dict = self.dictionary!
            let copy = ProductTemplate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: TemplatesResponse
         Used By: Catalog
     */

    class TemplatesResponse: Codable {
        public var page: Page?

        public var items: ProductTemplate?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: ProductTemplate?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> TemplatesResponse {
            let dict = self.dictionary!
            let copy = TemplatesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode(ProductTemplate.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: Properties
         Used By: Catalog
     */

    class Properties: Codable {
        public var itemType: [String: Any]?

        public var highlights: [String: Any]?

        public var isActive: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var multiSize: [String: Any]?

        public var shortDescription: [String: Any]?

        public var description: [String: Any]?

        public var productPublish: [String: Any]?

        public var sizeGuide: [String: Any]?

        public var tags: [String: Any]?

        public var trader: [String: Any]?

        public var sizes: [String: Any]?

        public var slug: [String: Any]?

        public var name: [String: Any]?

        public var currency: [String: Any]?

        public var isDependent: [String: Any]?

        public var media: [String: Any]?

        public var teaserTag: [String: Any]?

        public var productGroupTag: [String: Any]?

        public var customOrder: [String: Any]?

        public var categorySlug: [String: Any]?

        public var brandUid: [String: Any]?

        public var moq: [String: Any]?

        public var itemCode: [String: Any]?

        public var hsnCode: [String: Any]?

        public var traderType: [String: Any]?

        public var noOfBoxes: [String: Any]?

        public var returnConfig: [String: Any]?

        public var command: [String: Any]?

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case highlights

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case shortDescription = "short_description"

            case description

            case productPublish = "product_publish"

            case sizeGuide = "size_guide"

            case tags

            case trader

            case sizes

            case slug

            case name

            case currency

            case isDependent = "is_dependent"

            case media

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case customOrder = "custom_order"

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case moq

            case itemCode = "item_code"

            case hsnCode = "hsn_code"

            case traderType = "trader_type"

            case noOfBoxes = "no_of_boxes"

            case returnConfig = "return_config"

            case command

            case variants
        }

        public init(brandUid: [String: Any]?, categorySlug: [String: Any]?, command: [String: Any]?, countryOfOrigin: [String: Any]?, currency: [String: Any]?, customOrder: [String: Any]?, description: [String: Any]?, highlights: [String: Any]?, hsnCode: [String: Any]?, isActive: [String: Any]?, isDependent: [String: Any]?, itemCode: [String: Any]?, itemType: [String: Any]?, media: [String: Any]?, moq: [String: Any]?, multiSize: [String: Any]?, name: [String: Any]?, noOfBoxes: [String: Any]?, productGroupTag: [String: Any]?, productPublish: [String: Any]?, returnConfig: [String: Any]?, shortDescription: [String: Any]?, sizes: [String: Any]?, sizeGuide: [String: Any]?, slug: [String: Any]?, tags: [String: Any]?, teaserTag: [String: Any]?, trader: [String: Any]?, traderType: [String: Any]?, variants: [String: Any]?) {
            self.itemType = itemType

            self.highlights = highlights

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.shortDescription = shortDescription

            self.description = description

            self.productPublish = productPublish

            self.sizeGuide = sizeGuide

            self.tags = tags

            self.trader = trader

            self.sizes = sizes

            self.slug = slug

            self.name = name

            self.currency = currency

            self.isDependent = isDependent

            self.media = media

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.customOrder = customOrder

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.moq = moq

            self.itemCode = itemCode

            self.hsnCode = hsnCode

            self.traderType = traderType

            self.noOfBoxes = noOfBoxes

            self.returnConfig = returnConfig

            self.command = command

            self.variants = variants
        }

        public func duplicate() -> Properties {
            let dict = self.dictionary!
            let copy = Properties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode([String: Any].self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String: Any].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode([String: Any].self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode([String: Any].self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode([String: Any].self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode([String: Any].self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode([String: Any].self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode([String: Any].self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String: Any].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([String: Any].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String: Any].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode([String: Any].self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode([String: Any].self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([String: Any].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String: Any].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categorySlug = try container.decode([String: Any].self, forKey: .categorySlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode([String: Any].self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode([String: Any].self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode([String: Any].self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traderType = try container.decode([String: Any].self, forKey: .traderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode([String: Any].self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                command = try container.decode([String: Any].self, forKey: .command)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(traderType, forKey: .traderType)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(command, forKey: .command)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: GlobalValidation
         Used By: Catalog
     */

    class GlobalValidation: Codable {
        public var title: String?

        public var properties: Properties?

        public var type: String?

        public var required: [String]?

        public var definitions: [String: Any]?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case properties

            case type

            case required

            case definitions

            case description
        }

        public init(definitions: [String: Any]?, description: String?, properties: Properties?, required: [String]?, title: String?, type: String?) {
            self.title = title

            self.properties = properties

            self.type = type

            self.required = required

            self.definitions = definitions

            self.description = description
        }

        public func duplicate() -> GlobalValidation {
            let dict = self.dictionary!
            let copy = GlobalValidation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                properties = try container.decode(Properties.self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                required = try container.decode([String].self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                definitions = try container.decode([String: Any].self, forKey: .definitions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(definitions, forKey: .definitions)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: TemplateValidationData
         Used By: Catalog
     */

    class TemplateValidationData: Codable {
        public var globalValidation: GlobalValidation?

        public var templateValidation: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case globalValidation = "global_validation"

            case templateValidation = "template_validation"
        }

        public init(globalValidation: GlobalValidation?, templateValidation: [String: Any]?) {
            self.globalValidation = globalValidation

            self.templateValidation = templateValidation
        }

        public func duplicate() -> TemplateValidationData {
            let dict = self.dictionary!
            let copy = TemplateValidationData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalValidation = try container.decode(GlobalValidation.self, forKey: .globalValidation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateValidation = try container.decode([String: Any].self, forKey: .templateValidation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalValidation, forKey: .globalValidation)

            try? container.encodeIfPresent(templateValidation, forKey: .templateValidation)
        }
    }

    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var isArchived: Bool?

        public var attributes: [String]?

        public var id: String?

        public var tag: String?

        public var isActive: Bool?

        public var logo: String?

        public var categories: [String]?

        public var departments: [String]?

        public var isPhysical: Bool

        public var isExpirable: Bool

        public var description: String?

        public var slug: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case isArchived = "is_archived"

            case attributes

            case id

            case tag

            case isActive = "is_active"

            case logo

            case categories

            case departments

            case isPhysical = "is_physical"

            case isExpirable = "is_expirable"

            case description

            case slug

            case name
        }

        public init(attributes: [String]?, categories: [String]?, departments: [String]?, description: String?, id: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, name: String?, slug: String, tag: String?) {
            self.isArchived = isArchived

            self.attributes = attributes

            self.id = id

            self.tag = tag

            self.isActive = isActive

            self.logo = logo

            self.categories = categories

            self.departments = departments

            self.isPhysical = isPhysical

            self.isExpirable = isExpirable

            self.description = description

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> TemplateDetails {
            let dict = self.dictionary!
            let copy = TemplateDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(categories, forKey: .categories)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: TemplatesValidationResponse
         Used By: Catalog
     */

    class TemplatesValidationResponse: Codable {
        public var data: TemplateValidationData?

        public var templateDetails: TemplateDetails?

        public enum CodingKeys: String, CodingKey {
            case data

            case templateDetails = "template_details"
        }

        public init(data: TemplateValidationData?, templateDetails: TemplateDetails?) {
            self.data = data

            self.templateDetails = templateDetails
        }

        public func duplicate() -> TemplatesValidationResponse {
            let dict = self.dictionary!
            let copy = TemplatesValidationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(TemplateValidationData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateDetails = try container.decode(TemplateDetails.self, forKey: .templateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(templateDetails, forKey: .templateDetails)
        }
    }

    /*
         Model: InventoryValidationResponse
         Used By: Catalog
     */

    class InventoryValidationResponse: Codable {
        public var data: [String: Any]?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case message
        }

        public init(data: [String: Any]?, message: String?) {
            self.data = data

            self.message = message
        }

        public func duplicate() -> InventoryValidationResponse {
            let dict = self.dictionary!
            let copy = InventoryValidationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: HSNData
         Used By: Catalog
     */

    class HSNData: Codable {
        public var countryOfOrigin: [String]?

        public var hsnCode: [String]?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case hsnCode = "hsn_code"
        }

        public init(countryOfOrigin: [String]?, hsnCode: [String]?) {
            self.countryOfOrigin = countryOfOrigin

            self.hsnCode = hsnCode
        }

        public func duplicate() -> HSNData {
            let dict = self.dictionary!
            let copy = HSNData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryOfOrigin = try container.decode([String].self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode([String].self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }

    /*
         Model: HSNCodesResponse
         Used By: Catalog
     */

    class HSNCodesResponse: Codable {
        public var data: HSNData?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case message
        }

        public init(data: HSNData?, message: String?) {
            self.data = data

            self.message = message
        }

        public func duplicate() -> HSNCodesResponse {
            let dict = self.dictionary!
            let copy = HSNCodesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(HSNData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ProductDownloadItemsData
         Used By: Catalog
     */

    class ProductDownloadItemsData: Codable {
        public var templates: [String]?

        public var brand: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case templates

            case brand

            case type
        }

        public init(brand: [String]?, templates: [String]?, type: String?) {
            self.templates = templates

            self.brand = brand

            self.type = type
        }

        public func duplicate() -> ProductDownloadItemsData {
            let dict = self.dictionary!
            let copy = ProductDownloadItemsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templates = try container.decode([String].self, forKey: .templates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode([String].self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: VerifiedBy
         Used By: Catalog
     */

    class VerifiedBy: Codable {
        public var username: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case userId = "user_id"
        }

        public init(username: String?, userId: String?) {
            self.username = username

            self.userId = userId
        }

        public func duplicate() -> VerifiedBy {
            let dict = self.dictionary!
            let copy = VerifiedBy(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: ProductDownloadsItems
         Used By: Catalog
     */

    class ProductDownloadsItems: Codable {
        public var status: String?

        public var url: String?

        public var sellerId: Double?

        public var templateTags: [String: Any]?

        public var data: ProductDownloadItemsData?

        public var id: String?

        public var completedOn: String?

        public var taskId: String?

        public var triggerOn: String?

        public var createdBy: VerifiedBy?

        public enum CodingKeys: String, CodingKey {
            case status

            case url

            case sellerId = "seller_id"

            case templateTags = "template_tags"

            case data

            case id

            case completedOn = "completed_on"

            case taskId = "task_id"

            case triggerOn = "trigger_on"

            case createdBy = "created_by"
        }

        public init(completedOn: String?, createdBy: VerifiedBy?, data: ProductDownloadItemsData?, id: String?, sellerId: Double?, status: String?, taskId: String?, templateTags: [String: Any]?, triggerOn: String?, url: String?) {
            self.status = status

            self.url = url

            self.sellerId = sellerId

            self.templateTags = templateTags

            self.data = data

            self.id = id

            self.completedOn = completedOn

            self.taskId = taskId

            self.triggerOn = triggerOn

            self.createdBy = createdBy
        }

        public func duplicate() -> ProductDownloadsItems {
            let dict = self.dictionary!
            let copy = ProductDownloadsItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Double.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTags = try container.decode([String: Any].self, forKey: .templateTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(ProductDownloadItemsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskId = try container.decode(String.self, forKey: .taskId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(VerifiedBy.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(templateTags, forKey: .templateTags)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: ProductDownloadsResponse
         Used By: Catalog
     */

    class ProductDownloadsResponse: Codable {
        public var page: Page?

        public var items: ProductDownloadsItems?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: ProductDownloadsItems?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> ProductDownloadsResponse {
            let dict = self.dictionary!
            let copy = ProductDownloadsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode(ProductDownloadsItems.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductConfigurationDownloads
         Used By: Catalog
     */

    class ProductConfigurationDownloads: Codable {
        public var data: [[String: Any]]?

        public var multivalue: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case multivalue
        }

        public init(data: [[String: Any]]?, multivalue: Bool?) {
            self.data = data

            self.multivalue = multivalue
        }

        public func duplicate() -> ProductConfigurationDownloads {
            let dict = self.dictionary!
            let copy = ProductConfigurationDownloads(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([[String: Any]].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multivalue = try container.decode(Bool.self, forKey: .multivalue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(multivalue, forKey: .multivalue)
        }
    }

    /*
         Model: Media2
         Used By: Catalog
     */

    class Media2: Codable {
        public var logo: String

        public var landscape: String

        public var portrait: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case landscape

            case portrait
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.logo = logo

            self.landscape = landscape

            self.portrait = portrait
        }

        public func duplicate() -> Media2 {
            let dict = self.dictionary!
            let copy = Media2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            landscape = try container.decode(String.self, forKey: .landscape)

            portrait = try container.decode(String.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }

    /*
         Model: Hierarchy
         Used By: Catalog
     */

    class Hierarchy: Codable {
        public var l1: Int

        public var department: Int

        public var l2: Int

        public enum CodingKeys: String, CodingKey {
            case l1

            case department

            case l2
        }

        public init(department: Int, l1: Int, l2: Int) {
            self.l1 = l1

            self.department = department

            self.l2 = l2
        }

        public func duplicate() -> Hierarchy {
            let dict = self.dictionary!
            let copy = Hierarchy(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l1 = try container.decode(Int.self, forKey: .l1)

            department = try container.decode(Int.self, forKey: .department)

            l2 = try container.decode(Int.self, forKey: .l2)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l1, forKey: .l1)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(l2, forKey: .l2)
        }
    }

    /*
         Model: CategoryMappingValues
         Used By: Catalog
     */

    class CategoryMappingValues: Codable {
        public var name: String

        public var catalogId: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case catalogId = "catalog_id"
        }

        public init(catalogId: Int?, name: String) {
            self.name = name

            self.catalogId = catalogId
        }

        public func duplicate() -> CategoryMappingValues {
            let dict = self.dictionary!
            let copy = CategoryMappingValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                catalogId = try container.decode(Int.self, forKey: .catalogId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(catalogId, forKey: .catalogId)
        }
    }

    /*
         Model: CategoryMapping
         Used By: Catalog
     */

    class CategoryMapping: Codable {
        public var google: CategoryMappingValues?

        public var ajio: CategoryMappingValues?

        public var facebook: CategoryMappingValues?

        public enum CodingKeys: String, CodingKey {
            case google

            case ajio

            case facebook
        }

        public init(ajio: CategoryMappingValues?, facebook: CategoryMappingValues?, google: CategoryMappingValues?) {
            self.google = google

            self.ajio = ajio

            self.facebook = facebook
        }

        public func duplicate() -> CategoryMapping {
            let dict = self.dictionary!
            let copy = CategoryMapping(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                google = try container.decode(CategoryMappingValues.self, forKey: .google)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ajio = try container.decode(CategoryMappingValues.self, forKey: .ajio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                facebook = try container.decode(CategoryMappingValues.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(google, forKey: .google)

            try? container.encodeIfPresent(ajio, forKey: .ajio)

            try? container.encodeIfPresent(facebook, forKey: .facebook)
        }
    }

    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var media: Media2?

        public var hierarchy: [Hierarchy]?

        public var level: Int

        public var tryouts: [String]?

        public var synonyms: [String]?

        public var isActive: Bool

        public var departments: [Int]

        public var priority: Int?

        public var marketplaces: CategoryMapping?

        public var slug: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case media

            case hierarchy

            case level

            case tryouts

            case synonyms

            case isActive = "is_active"

            case departments

            case priority

            case marketplaces

            case slug

            case name
        }

        public init(departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?) {
            self.media = media

            self.hierarchy = hierarchy

            self.level = level

            self.tryouts = tryouts

            self.synonyms = synonyms

            self.isActive = isActive

            self.departments = departments

            self.priority = priority

            self.marketplaces = marketplaces

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> CategoryRequestBody {
            let dict = self.dictionary!
            let copy = CategoryRequestBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CategoryCreateResponse
         Used By: Catalog
     */

    class CategoryCreateResponse: Codable {
        public var uid: Int?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case message
        }

        public init(message: String?, uid: Int?) {
            self.uid = uid

            self.message = message
        }

        public func duplicate() -> CategoryCreateResponse {
            let dict = self.dictionary!
            let copy = CategoryCreateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var media: Media2?

        public var id: String?

        public var modifiedOn: String?

        public var hierarchy: [Hierarchy]?

        public var level: Int

        public var tryouts: [String]?

        public var synonyms: [String]?

        public var isActive: Bool

        public var uid: Int?

        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var departments: [Int]

        public var priority: Int?

        public var marketplaces: CategoryMapping?

        public var slug: String?

        public var name: String

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case media

            case id = "_id"

            case modifiedOn = "modified_on"

            case hierarchy

            case level

            case tryouts

            case synonyms

            case isActive = "is_active"

            case uid

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case departments

            case priority

            case marketplaces

            case slug

            case name

            case createdBy = "created_by"
        }

        public init(createdBy: [String: Any]?, createdOn: String?, departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?, uid: Int?, id: String?) {
            self.media = media

            self.id = id

            self.modifiedOn = modifiedOn

            self.hierarchy = hierarchy

            self.level = level

            self.tryouts = tryouts

            self.synonyms = synonyms

            self.isActive = isActive

            self.uid = uid

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.departments = departments

            self.priority = priority

            self.marketplaces = marketplaces

            self.slug = slug

            self.name = name

            self.createdBy = createdBy
        }

        public func duplicate() -> Category {
            let dict = self.dictionary!
            let copy = Category(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: CategoryResponse
         Used By: Catalog
     */

    class CategoryResponse: Codable {
        public var page: Page?

        public var items: [Category]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [Category]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> CategoryResponse {
            let dict = self.dictionary!
            let copy = CategoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([Category].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: SingleCategoryResponse
         Used By: Catalog
     */

    class SingleCategoryResponse: Codable {
        public var data: Category?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: Category?) {
            self.data = data
        }

        public func duplicate() -> SingleCategoryResponse {
            let dict = self.dictionary!
            let copy = SingleCategoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(Category.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: CategoryUpdateResponse
         Used By: Catalog
     */

    class CategoryUpdateResponse: Codable {
        public var success: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String?, success: Bool?) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> CategoryUpdateResponse {
            let dict = self.dictionary!
            let copy = CategoryUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ProductPublish
         Used By: Catalog
     */

    class ProductPublish: Codable {
        public var isSet: Bool?

        public var productOnlineDate: String?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case productOnlineDate = "product_online_date"
        }

        public init(isSet: Bool?, productOnlineDate: String?) {
            self.isSet = isSet

            self.productOnlineDate = productOnlineDate
        }

        public func duplicate() -> ProductPublish {
            let dict = self.dictionary!
            let copy = ProductPublish(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        }
    }

    /*
         Model: Trader
         Used By: Catalog
     */

    class Trader: Codable {
        public var name: String?

        public var address: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case type
        }

        public init(address: [String]?, name: String?, type: String?) {
            self.name = name

            self.address = address

            self.type = type
        }

        public func duplicate() -> Trader {
            let dict = self.dictionary!
            let copy = Trader(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode([String].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: TeaserTag
         Used By: Catalog
     */

    class TeaserTag: Codable {
        public var tag: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case tag

            case url
        }

        public init(tag: String?, url: String?) {
            self.tag = tag

            self.url = url
        }

        public func duplicate() -> TeaserTag {
            let dict = self.dictionary!
            let copy = TeaserTag(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(tag, forKey: .tag)

            try? container.encode(url, forKey: .url)
        }
    }

    /*
         Model: CustomOrder
         Used By: Catalog
     */

    class CustomOrder: Codable {
        public var isCustomOrder: Bool?

        public var manufacturingTime: Int?

        public var manufacturingTimeUnit: String?

        public enum CodingKeys: String, CodingKey {
            case isCustomOrder = "is_custom_order"

            case manufacturingTime = "manufacturing_time"

            case manufacturingTimeUnit = "manufacturing_time_unit"
        }

        public init(isCustomOrder: Bool?, manufacturingTime: Int?, manufacturingTimeUnit: String?) {
            self.isCustomOrder = isCustomOrder

            self.manufacturingTime = manufacturingTime

            self.manufacturingTimeUnit = manufacturingTimeUnit
        }

        public func duplicate() -> CustomOrder {
            let dict = self.dictionary!
            let copy = CustomOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isCustomOrder = try container.decode(Bool.self, forKey: .isCustomOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
        }
    }

    /*
         Model: OrderQuantity
         Used By: Catalog
     */

    class OrderQuantity: Codable {
        public var minimum: Int?

        public var isSet: Bool?

        public var maximum: Int?

        public enum CodingKeys: String, CodingKey {
            case minimum

            case isSet = "is_set"

            case maximum
        }

        public init(isSet: Bool?, maximum: Int?, minimum: Int?) {
            self.minimum = minimum

            self.isSet = isSet

            self.maximum = maximum
        }

        public func duplicate() -> OrderQuantity {
            let dict = self.dictionary!
            let copy = OrderQuantity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minimum = try container.decode(Int.self, forKey: .minimum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maximum = try container.decode(Int.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minimum, forKey: .minimum)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(maximum, forKey: .maximum)
        }
    }

    /*
         Model: ReturnConfig
         Used By: Catalog
     */

    class ReturnConfig: Codable {
        public var returnable: Bool

        public var time: Int

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case returnable

            case time

            case unit
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.returnable = returnable

            self.time = time

            self.unit = unit
        }

        public func duplicate() -> ReturnConfig {
            let dict = self.dictionary!
            let copy = ReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            returnable = try container.decode(Bool.self, forKey: .returnable)

            time = try container.decode(Int.self, forKey: .time)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }

    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var itemType: String

        public var highlights: [String]?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var multiSize: Bool?

        public var shortDescription: String?

        public var description: String?

        public var productPublish: ProductPublish?

        public var sizeGuide: String?

        public var customJson: [String: Any]?

        public var requester: String?

        public var tags: [String]?

        public var uid: Int?

        public var departments: [Int]

        public var trader: [Trader]

        public var slug: String

        public var name: String

        public var currency: String

        public var changeRequestId: String?

        public var isDependent: Bool?

        public var media: [Media1]?

        public var teaserTag: TeaserTag?

        public var productGroupTag: [String]?

        public var action: String?

        public var customOrder: CustomOrder?

        public var bulkJobId: String?

        public var categorySlug: String

        public var brandUid: Int

        public var isSet: Bool?

        public var templateTag: String

        public var moq: OrderQuantity?

        public var itemCode: String

        public var hsnCode: String

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var returnConfig: ReturnConfig

        public var companyId: Int

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case highlights

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case shortDescription = "short_description"

            case description

            case productPublish = "product_publish"

            case sizeGuide = "size_guide"

            case customJson = "_custom_json"

            case requester

            case tags

            case uid

            case departments

            case trader

            case slug

            case name

            case currency

            case changeRequestId = "change_request_id"

            case isDependent = "is_dependent"

            case media

            case teaserTag = "teaser_tag"

            case productGroupTag = "product_group_tag"

            case action

            case customOrder = "custom_order"

            case bulkJobId = "bulk_job_id"

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case isSet = "is_set"

            case templateTag = "template_tag"

            case moq

            case itemCode = "item_code"

            case hsnCode = "hsn_code"

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case returnConfig = "return_config"

            case companyId = "company_id"

            case variants
        }

        public init(action: String?, brandUid: Int, bulkJobId: String?, categorySlug: String, changeRequestId: String?, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder?, departments: [Int], description: String?, highlights: [String]?, hsnCode: String, isActive: Bool?, isDependent: Bool?, isImageLessProduct: Bool?, isSet: Bool?, itemCode: String, itemType: String, media: [Media1]?, moq: OrderQuantity?, multiSize: Bool?, name: String, noOfBoxes: Int?, productGroupTag: [String]?, productPublish: ProductPublish?, requester: String?, returnConfig: ReturnConfig, shortDescription: String?, sizeGuide: String?, slug: String, tags: [String]?, teaserTag: TeaserTag?, templateTag: String, trader: [Trader], uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.itemType = itemType

            self.highlights = highlights

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.shortDescription = shortDescription

            self.description = description

            self.productPublish = productPublish

            self.sizeGuide = sizeGuide

            self.customJson = customJson

            self.requester = requester

            self.tags = tags

            self.uid = uid

            self.departments = departments

            self.trader = trader

            self.slug = slug

            self.name = name

            self.currency = currency

            self.changeRequestId = changeRequestId

            self.isDependent = isDependent

            self.media = media

            self.teaserTag = teaserTag

            self.productGroupTag = productGroupTag

            self.action = action

            self.customOrder = customOrder

            self.bulkJobId = bulkJobId

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.isSet = isSet

            self.templateTag = templateTag

            self.moq = moq

            self.itemCode = itemCode

            self.hsnCode = hsnCode

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.returnConfig = returnConfig

            self.companyId = companyId

            self.variants = variants
        }

        public func duplicate() -> ProductCreateUpdate {
            let dict = self.dictionary!
            let copy = ProductCreateUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            trader = try container.decode([Trader].self, forKey: .trader)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: Image
         Used By: Catalog
     */

    class Image: Codable {
        public var aspectRatio: String?

        public var secureUrl: String?

        public var aspectRatioF: Double?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"

            case aspectRatioF = "aspect_ratio_f"

            case url
        }

        public init(aspectRatio: String?, aspectRatioF: Double?, secureUrl: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl

            self.aspectRatioF = aspectRatioF

            self.url = url
        }

        public func duplicate() -> Image {
            let dict = self.dictionary!
            let copy = Image(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatioF = try container.decode(Double.self, forKey: .aspectRatioF)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: ProductPublished
         Used By: Catalog
     */

    class ProductPublished: Codable {
        public var isSet: Bool?

        public var productOnlineDate: Int?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case productOnlineDate = "product_online_date"
        }

        public init(isSet: Bool?, productOnlineDate: Int?) {
            self.isSet = isSet

            self.productOnlineDate = productOnlineDate
        }

        public func duplicate() -> ProductPublished {
            let dict = self.dictionary!
            let copy = ProductPublished(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(Int.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        }
    }

    /*
         Model: Logo
         Used By: Catalog
     */

    class Logo: Codable {
        public var aspectRatio: String?

        public var url: String?

        public var aspectRatioF: Int?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case url

            case aspectRatioF = "aspect_ratio_f"

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, aspectRatioF: Int?, secureUrl: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.url = url

            self.aspectRatioF = aspectRatioF

            self.secureUrl = secureUrl
        }

        public func duplicate() -> Logo {
            let dict = self.dictionary!
            let copy = Logo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatioF = try container.decode(Int.self, forKey: .aspectRatioF)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: Brand
         Used By: Catalog
     */

    class Brand: Codable {
        public var logo: Logo?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case logo

            case name

            case uid
        }

        public init(logo: Logo?, name: String?, uid: Int?) {
            self.logo = logo

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> Brand {
            let dict = self.dictionary!
            let copy = Brand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(Logo.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var itemType: String?

        public var highlights: [String]?

        public var id: String?

        public var images: [Image]?

        public var isActive: Bool?

        public var countryOfOrigin: String?

        public var categoryUid: Int?

        public var multiSize: Bool?

        public var primaryColor: String?

        public var shortDescription: String?

        public var description: String?

        public var productPublish: ProductPublished?

        public var sizeGuide: String?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var departments: [Int]?

        public var sizes: [[String: Any]]?

        public var isPhysical: Bool?

        public var slug: String?

        public var name: String?

        public var currency: String?

        public var isDependent: Bool?

        public var media: [Media1]?

        public var customOrder: [String: Any]?

        public var categorySlug: String?

        public var brandUid: Int?

        public var l3Mapping: [String]?

        public var allSizes: [[String: Any]]?

        public var isSet: Bool?

        public var templateTag: String?

        public var moq: [String: Any]?

        public var brand: Brand?

        public var itemCode: String?

        public var hsnCode: String?

        public var color: String?

        public var imageNature: String?

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case highlights

            case id

            case images

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case categoryUid = "category_uid"

            case multiSize = "multi_size"

            case primaryColor = "primary_color"

            case shortDescription = "short_description"

            case description

            case productPublish = "product_publish"

            case sizeGuide = "size_guide"

            case customJson = "_custom_json"

            case uid

            case departments

            case sizes

            case isPhysical = "is_physical"

            case slug

            case name

            case currency

            case isDependent = "is_dependent"

            case media

            case customOrder = "custom_order"

            case categorySlug = "category_slug"

            case brandUid = "brand_uid"

            case l3Mapping = "l3_mapping"

            case allSizes = "all_sizes"

            case isSet = "is_set"

            case templateTag = "template_tag"

            case moq

            case brand

            case itemCode = "item_code"

            case hsnCode = "hsn_code"

            case color

            case imageNature = "image_nature"

            case variants
        }

        public init(allSizes: [[String: Any]]?, brand: Brand?, brandUid: Int?, categorySlug: String?, categoryUid: Int?, color: String?, countryOfOrigin: String?, currency: String?, customOrder: [String: Any]?, departments: [Int]?, description: String?, highlights: [String]?, hsnCode: String?, id: String?, images: [Image]?, imageNature: String?, isActive: Bool?, isDependent: Bool?, isPhysical: Bool?, isSet: Bool?, itemCode: String?, itemType: String?, l3Mapping: [String]?, media: [Media1]?, moq: [String: Any]?, multiSize: Bool?, name: String?, primaryColor: String?, productPublish: ProductPublished?, shortDescription: String?, sizes: [[String: Any]]?, sizeGuide: String?, slug: String?, templateTag: String?, uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.itemType = itemType

            self.highlights = highlights

            self.id = id

            self.images = images

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.categoryUid = categoryUid

            self.multiSize = multiSize

            self.primaryColor = primaryColor

            self.shortDescription = shortDescription

            self.description = description

            self.productPublish = productPublish

            self.sizeGuide = sizeGuide

            self.customJson = customJson

            self.uid = uid

            self.departments = departments

            self.sizes = sizes

            self.isPhysical = isPhysical

            self.slug = slug

            self.name = name

            self.currency = currency

            self.isDependent = isDependent

            self.media = media

            self.customOrder = customOrder

            self.categorySlug = categorySlug

            self.brandUid = brandUid

            self.l3Mapping = l3Mapping

            self.allSizes = allSizes

            self.isSet = isSet

            self.templateTag = templateTag

            self.moq = moq

            self.brand = brand

            self.itemCode = itemCode

            self.hsnCode = hsnCode

            self.color = color

            self.imageNature = imageNature

            self.variants = variants
        }

        public func duplicate() -> Product {
            let dict = self.dictionary!
            let copy = Product(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([Image].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublished.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([Int].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categorySlug = try container.decode(String.self, forKey: .categorySlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allSizes = try container.decode([[String: Any]].self, forKey: .allSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode([String: Any].self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(Brand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: ProductListingResponse
         Used By: Catalog
     */

    class ProductListingResponse: Codable {
        public var page: Page?

        public var items: [Product]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [Product]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> ProductListingResponse {
            let dict = self.dictionary!
            let copy = ProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([Product].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ValidateProduct
         Used By: Catalog
     */

    class ValidateProduct: Codable {
        public var valid: Bool?

        public enum CodingKeys: String, CodingKey {
            case valid
        }

        public init(valid: Bool?) {
            self.valid = valid
        }

        public func duplicate() -> ValidateProduct {
            let dict = self.dictionary!
            let copy = ValidateProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                valid = try container.decode(Bool.self, forKey: .valid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valid, forKey: .valid)
        }
    }

    /*
         Model: UserInfo1
         Used By: Catalog
     */

    class UserInfo1: Codable {
        public var uid: String?

        public var email: String?

        public var username: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case email

            case username

            case userId = "user_id"
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.uid = uid

            self.email = email

            self.username = username

            self.userId = userId
        }

        public func duplicate() -> UserInfo1 {
            let dict = self.dictionary!
            let copy = UserInfo1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var trackingUrl: String?

        public var filePath: String?

        public var modifiedOn: String?

        public var companyId: Int

        public var total: Int

        public var cancelled: Int?

        public var failedRecords: [[String: Any]]?

        public var isActive: Bool?

        public var stage: String?

        public var modifiedBy: UserInfo1?

        public var createdOn: String

        public var customTemplateTag: String?

        public var succeed: Int?

        public var templateTag: String?

        public var failed: Int?

        public var cancelledRecords: [[String: Any]]?

        public var createdBy: UserInfo1?

        public enum CodingKeys: String, CodingKey {
            case trackingUrl = "tracking_url"

            case filePath = "file_path"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case total

            case cancelled

            case failedRecords = "failed_records"

            case isActive = "is_active"

            case stage

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case customTemplateTag = "custom_template_tag"

            case succeed

            case templateTag = "template_tag"

            case failed

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"
        }

        public init(cancelled: Int?, cancelledRecords: [[String: Any]]?, companyId: Int, createdBy: UserInfo1?, createdOn: String, customTemplateTag: String?, failed: Int?, failedRecords: [[String: Any]]?, filePath: String?, isActive: Bool?, modifiedBy: UserInfo1?, modifiedOn: String?, stage: String?, succeed: Int?, templateTag: String?, total: Int, trackingUrl: String?) {
            self.trackingUrl = trackingUrl

            self.filePath = filePath

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.total = total

            self.cancelled = cancelled

            self.failedRecords = failedRecords

            self.isActive = isActive

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.customTemplateTag = customTemplateTag

            self.succeed = succeed

            self.templateTag = templateTag

            self.failed = failed

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy
        }

        public func duplicate() -> BulkJob {
            let dict = self.dictionary!
            let copy = BulkJob(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            total = try container.decode(Int.self, forKey: .total)

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([[String: Any]].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: UserDetail
         Used By: Catalog
     */

    class UserDetail: Codable {
        public var fullName: String?

        public var username: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case fullName = "full_name"

            case username

            case userId = "user_id"
        }

        public init(fullName: String?, username: String?, userId: String?) {
            self.fullName = fullName

            self.username = username

            self.userId = userId
        }

        public func duplicate() -> UserDetail {
            let dict = self.dictionary!
            let copy = UserDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fullName = try container.decode(String.self, forKey: .fullName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: ProductBulkRequest
         Used By: Catalog
     */

    class ProductBulkRequest: Codable {
        public var filePath: String?

        public var stage: String?

        public var companyId: Int?

        public var modifiedOn: String?

        public var failedRecords: [String]?

        public var total: Int?

        public var isActive: Bool?

        public var cancelled: Int?

        public var modifiedBy: UserDetail?

        public var createdOn: String?

        public var template: ProductTemplate?

        public var templateTag: String?

        public var succeed: Int?

        public var failed: Int?

        public var cancelledRecords: [String]?

        public var createdBy: UserDetail?

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case stage

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case failedRecords = "failed_records"

            case total

            case isActive = "is_active"

            case cancelled

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case template

            case templateTag = "template_tag"

            case succeed

            case failed

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserDetail?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, isActive: Bool?, modifiedBy: UserDetail?, modifiedOn: String?, stage: String?, succeed: Int?, template: ProductTemplate?, templateTag: String?, total: Int?) {
            self.filePath = filePath

            self.stage = stage

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.failedRecords = failedRecords

            self.total = total

            self.isActive = isActive

            self.cancelled = cancelled

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.template = template

            self.templateTag = templateTag

            self.succeed = succeed

            self.failed = failed

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy
        }

        public func duplicate() -> ProductBulkRequest {
            let dict = self.dictionary!
            let copy = ProductBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(ProductTemplate.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: ProductBulkRequestList
         Used By: Catalog
     */

    class ProductBulkRequestList: Codable {
        public var page: Page?

        public var items: ProductBulkRequest?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: ProductBulkRequest?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> ProductBulkRequestList {
            let dict = self.dictionary!
            let copy = ProductBulkRequestList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode(ProductBulkRequest.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var companyId: Int

        public var data: [[String: Any]]

        public var batchId: String

        public var templateTag: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case data

            case batchId = "batch_id"

            case templateTag = "template_tag"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.companyId = companyId

            self.data = data

            self.batchId = batchId

            self.templateTag = templateTag
        }

        public func duplicate() -> BulkProductRequest {
            let dict = self.dictionary!
            let copy = BulkProductRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            data = try container.decode([[String: Any]].self, forKey: .data)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
        }
    }

    /*
         Model: NestedTags
         Used By: Catalog
     */

    class NestedTags: Codable {
        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case tags
        }

        public init(tags: [String]?) {
            self.tags = tags
        }

        public func duplicate() -> NestedTags {
            let dict = self.dictionary!
            let copy = NestedTags(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: ProductTagsViewResponse
         Used By: Catalog
     */

    class ProductTagsViewResponse: Codable {
        public var items: NestedTags?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: NestedTags?) {
            self.items = items
        }

        public func duplicate() -> ProductTagsViewResponse {
            let dict = self.dictionary!
            let copy = ProductTagsViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(NestedTags.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var companyId: Int?

        public var url: String

        public var user: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case url

            case user
        }

        public init(companyId: Int?, url: String, user: [String: Any]) {
            self.companyId = companyId

            self.url = url

            self.user = user
        }

        public func duplicate() -> ProductBulkAssets {
            let dict = self.dictionary!
            let copy = ProductBulkAssets(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            user = try container.decode([String: Any].self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }

    /*
         Model: UserCommon
         Used By: Catalog
     */

    class UserCommon: Codable {
        public var companyId: Int?

        public var username: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case username

            case userId = "user_id"
        }

        public init(companyId: Int?, username: String?, userId: String?) {
            self.companyId = companyId

            self.username = username

            self.userId = userId
        }

        public func duplicate() -> UserCommon {
            let dict = self.dictionary!
            let copy = UserCommon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: Items
         Used By: Catalog
     */

    class Items: Codable {
        public var trackingUrl: String?

        public var filePath: String?

        public var modifiedOn: String?

        public var stage: String?

        public var total: Int?

        public var failedRecords: [String]?

        public var companyId: Int?

        public var isActive: Bool?

        public var cancelled: Int?

        public var modifiedBy: UserCommon?

        public var id: String?

        public var createdOn: String?

        public var retry: Int?

        public var succeed: Int?

        public var failed: Int?

        public var cancelledRecords: [String]?

        public var createdBy: UserCommon?

        public enum CodingKeys: String, CodingKey {
            case trackingUrl = "tracking_url"

            case filePath = "file_path"

            case modifiedOn = "modified_on"

            case stage

            case total

            case failedRecords = "failed_records"

            case companyId = "company_id"

            case isActive = "is_active"

            case cancelled

            case modifiedBy = "modified_by"

            case id

            case createdOn = "created_on"

            case retry

            case succeed

            case failed

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserCommon?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: UserCommon?, modifiedOn: String?, retry: Int?, stage: String?, succeed: Int?, total: Int?, trackingUrl: String?) {
            self.trackingUrl = trackingUrl

            self.filePath = filePath

            self.modifiedOn = modifiedOn

            self.stage = stage

            self.total = total

            self.failedRecords = failedRecords

            self.companyId = companyId

            self.isActive = isActive

            self.cancelled = cancelled

            self.modifiedBy = modifiedBy

            self.id = id

            self.createdOn = createdOn

            self.retry = retry

            self.succeed = succeed

            self.failed = failed

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy
        }

        public func duplicate() -> Items {
            let dict = self.dictionary!
            let copy = Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserCommon.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retry = try container.decode(Int.self, forKey: .retry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserCommon.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: BulkAssetResponse
         Used By: Catalog
     */

    class BulkAssetResponse: Codable {
        public var page: Page?

        public var items: [Items]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [Items]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> BulkAssetResponse {
            let dict = self.dictionary!
            let copy = BulkAssetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([Items].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ProductSizeDeleteDataResponse
         Used By: Catalog
     */

    class ProductSizeDeleteDataResponse: Codable {
        public var size: String?

        public var itemId: Int?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case itemId = "item_id"

            case companyId = "company_id"
        }

        public init(companyId: Int?, itemId: Int?, size: String?) {
            self.size = size

            self.itemId = itemId

            self.companyId = companyId
        }

        public func duplicate() -> ProductSizeDeleteDataResponse {
            let dict = self.dictionary!
            let copy = ProductSizeDeleteDataResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: ProductSizeDeleteResponse
         Used By: Catalog
     */

    class ProductSizeDeleteResponse: Codable {
        public var success: Bool?

        public var data: ProductSizeDeleteDataResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: ProductSizeDeleteDataResponse?, success: Bool?) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> ProductSizeDeleteResponse {
            let dict = self.dictionary!
            let copy = ProductSizeDeleteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(ProductSizeDeleteDataResponse.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ItemQuery
         Used By: Catalog
     */

    class ItemQuery: Codable {
        public var uid: Int?

        public var itemCode: String?

        public var brandUid: Int?

        public enum CodingKeys: String, CodingKey {
            case uid

            case itemCode = "item_code"

            case brandUid = "brand_uid"
        }

        public init(brandUid: Int?, itemCode: String?, uid: Int?) {
            self.uid = uid

            self.itemCode = itemCode

            self.brandUid = brandUid
        }

        public func duplicate() -> ItemQuery {
            let dict = self.dictionary!
            let copy = ItemQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
        }
    }

    /*
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var primary: Bool?

        public var gtinValue: String

        public var gtinType: String

        public enum CodingKeys: String, CodingKey {
            case primary

            case gtinValue = "gtin_value"

            case gtinType = "gtin_type"
        }

        public init(gtinType: String, gtinValue: String, primary: Bool?) {
            self.primary = primary

            self.gtinValue = gtinValue

            self.gtinType = gtinType
        }

        public func duplicate() -> GTIN {
            let dict = self.dictionary!
            let copy = GTIN(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gtinValue = try container.decode(String.self, forKey: .gtinValue)

            gtinType = try container.decode(String.self, forKey: .gtinType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)
        }
    }

    /*
         Model: SetSize
         Used By: Catalog
     */

    class SetSize: Codable {
        public var size: String

        public var pieces: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case pieces
        }

        public init(pieces: Int, size: String) {
            self.size = size

            self.pieces = pieces
        }

        public func duplicate() -> SetSize {
            let dict = self.dictionary!
            let copy = SetSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            pieces = try container.decode(Int.self, forKey: .pieces)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(pieces, forKey: .pieces)
        }
    }

    /*
         Model: SizeDistribution
         Used By: Catalog
     */

    class SizeDistribution: Codable {
        public var sizes: [SetSize]

        public enum CodingKeys: String, CodingKey {
            case sizes
        }

        public init(sizes: [SetSize]) {
            self.sizes = sizes
        }

        public func duplicate() -> SizeDistribution {
            let dict = self.dictionary!
            let copy = SizeDistribution(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizes = try container.decode([SetSize].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: InventorySet
         Used By: Catalog
     */

    class InventorySet: Codable {
        public var sizeDistribution: SizeDistribution

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case sizeDistribution = "size_distribution"

            case quantity
        }

        public init(quantity: Int?, sizeDistribution: SizeDistribution) {
            self.sizeDistribution = sizeDistribution

            self.quantity = quantity
        }

        public func duplicate() -> InventorySet {
            let dict = self.dictionary!
            let copy = InventorySet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizeDistribution = try container.decode(SizeDistribution.self, forKey: .sizeDistribution)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }

    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var size: String

        public var itemWeightUnitOfMeasure: String?

        public var itemLength: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var itemHeight: Double?

        public var identifiers: [GTIN]

        public var currency: String

        public var price: Double

        public var itemWidth: Double?

        public var storeCode: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var priceTransfer: Double?

        public var quantity: Int

        public var priceEffective: Double

        public var itemWeight: Double?

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"

            case identifiers

            case currency

            case price

            case itemWidth = "item_width"

            case storeCode = "store_code"

            case set

            case isSet = "is_set"

            case priceTransfer = "price_transfer"

            case quantity

            case priceEffective = "price_effective"

            case itemWeight = "item_weight"

            case expirationDate = "expiration_date"
        }

        public init(currency: String, expirationDate: String?, identifiers: [GTIN], isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, set: InventorySet?, size: String, storeCode: String) {
            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.currency = currency

            self.price = price

            self.itemWidth = itemWidth

            self.storeCode = storeCode

            self.set = set

            self.isSet = isSet

            self.priceTransfer = priceTransfer

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.itemWeight = itemWeight

            self.expirationDate = expirationDate
        }

        public func duplicate() -> InvSize {
            let dict = self.dictionary!
            let copy = InvSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            currency = try container.decode(String.self, forKey: .currency)

            price = try container.decode(Double.self, forKey: .price)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }

    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var companyId: Int

        public var item: ItemQuery

        public var sizes: [InvSize]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case item

            case sizes
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.companyId = companyId

            self.item = item

            self.sizes = sizes
        }

        public func duplicate() -> InventoryRequest {
            let dict = self.dictionary!
            let copy = InventoryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            item = try container.decode(ItemQuery.self, forKey: .item)

            sizes = try container.decode([InvSize].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: InventoryResponse
         Used By: Catalog
     */

    class InventoryResponse: Codable {
        public var size: String?

        public var sellerIdentifier: Int?

        public var itemId: Int?

        public var sellableQuantity: Int?

        public var identifiers: [String: Any]?

        public var inventoryUpdatedOn: String?

        public var price: Int?

        public var uid: String?

        public var priceTransfer: Int?

        public var store: [String: Any]?

        public var quantity: Int?

        public var priceEffective: Int?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case sellableQuantity = "sellable_quantity"

            case identifiers

            case inventoryUpdatedOn = "inventory_updated_on"

            case price

            case uid

            case priceTransfer = "price_transfer"

            case store

            case quantity

            case priceEffective = "price_effective"

            case currency
        }

        public init(currency: String?, identifiers: [String: Any]?, inventoryUpdatedOn: String?, itemId: Int?, price: Int?, priceEffective: Int?, priceTransfer: Int?, quantity: Int?, sellableQuantity: Int?, sellerIdentifier: Int?, size: String?, store: [String: Any]?, uid: String?) {
            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.sellableQuantity = sellableQuantity

            self.identifiers = identifiers

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.price = price

            self.uid = uid

            self.priceTransfer = priceTransfer

            self.store = store

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.currency = currency
        }

        public func duplicate() -> InventoryResponse {
            let dict = self.dictionary!
            let copy = InventoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(Int.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Int.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceTransfer = try container.decode(Int.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode([String: Any].self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: InventoryDeleteData
         Used By: Catalog
     */

    class InventoryDeleteData: Codable {
        public var size: String?

        public var locationId: Int?

        public var itemId: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case locationId = "location_id"

            case itemId = "item_id"
        }

        public init(itemId: Int?, locationId: Int?, size: String?) {
            self.size = size

            self.locationId = locationId

            self.itemId = itemId
        }

        public func duplicate() -> InventoryDeleteData {
            let dict = self.dictionary!
            let copy = InventoryDeleteData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationId = try container.decode(Int.self, forKey: .locationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }

    /*
         Model: InventoryDelete
         Used By: Catalog
     */

    class InventoryDelete: Codable {
        public var success: Bool?

        public var data: InventoryDeleteData?

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: InventoryDeleteData?, success: Bool?) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> InventoryDelete {
            let dict = self.dictionary!
            let copy = InventoryDelete(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(InventoryDeleteData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: CommonResponse
         Used By: Catalog
     */

    class CommonResponse: Codable {
        public var success: String?

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: String?) {
            self.success = success
        }

        public func duplicate() -> CommonResponse {
            let dict = self.dictionary!
            let copy = CommonResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(String.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: BulkInventoryGetItems
         Used By: Catalog
     */

    class BulkInventoryGetItems: Codable {
        public var filePath: String?

        public var companyId: Int?

        public var id: String?

        public var cancelled: Int?

        public var failedRecords: [String]?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var stage: String?

        public var modifiedBy: [String: Any]?

        public var total: Int?

        public var createdOn: String?

        public var succeed: Int?

        public var failed: Int?

        public var cancelledRecords: [String]?

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case companyId = "company_id"

            case id

            case cancelled

            case failedRecords = "failed_records"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case stage

            case modifiedBy = "modified_by"

            case total

            case createdOn = "created_on"

            case succeed

            case failed

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: [String: Any]?, modifiedOn: String?, stage: String?, succeed: Int?, total: Int?) {
            self.filePath = filePath

            self.companyId = companyId

            self.id = id

            self.cancelled = cancelled

            self.failedRecords = failedRecords

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.total = total

            self.createdOn = createdOn

            self.succeed = succeed

            self.failed = failed

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy
        }

        public func duplicate() -> BulkInventoryGetItems {
            let dict = self.dictionary!
            let copy = BulkInventoryGetItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: BulkInventoryGet
         Used By: Catalog
     */

    class BulkInventoryGet: Codable {
        public var page: Page?

        public var items: [BulkInventoryGetItems]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [BulkInventoryGetItems]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> BulkInventoryGet {
            let dict = self.dictionary!
            let copy = BulkInventoryGet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([BulkInventoryGetItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var size: String?

        public var itemWeightUnitOfMeasure: String?

        public var sellerIdentifier: String

        public var itemLength: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var itemHeight: Double?

        public var identifiers: [[String: Any]]?

        public var currency: String

        public var price: Double

        public var itemWidth: Double?

        public var storeCode: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var priceTransfer: Double?

        public var quantity: Int

        public var priceEffective: Double

        public var itemWeight: Double?

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case sellerIdentifier = "seller_identifier"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"

            case identifiers

            case currency

            case price

            case itemWidth = "item_width"

            case storeCode = "store_code"

            case set

            case isSet = "is_set"

            case priceTransfer = "price_transfer"

            case quantity

            case priceEffective = "price_effective"

            case itemWeight = "item_weight"

            case expirationDate = "expiration_date"
        }

        public init(currency: String, expirationDate: String?, identifiers: [[String: Any]]?, isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, sellerIdentifier: String, set: InventorySet?, size: String?, storeCode: String) {
            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.sellerIdentifier = sellerIdentifier

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.currency = currency

            self.price = price

            self.itemWidth = itemWidth

            self.storeCode = storeCode

            self.set = set

            self.isSet = isSet

            self.priceTransfer = priceTransfer

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.itemWeight = itemWeight

            self.expirationDate = expirationDate
        }

        public func duplicate() -> Size1 {
            let dict = self.dictionary!
            let copy = Size1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([[String: Any]].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            price = try container.decode(Double.self, forKey: .price)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(size, forKey: .size)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }

    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var companyId: Int

        public var sizes: [Size1]

        public var batchId: String

        public var user: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sizes

            case batchId = "batch_id"

            case user
        }

        public init(batchId: String, companyId: Int, sizes: [Size1], user: [String: Any]?) {
            self.companyId = companyId

            self.sizes = sizes

            self.batchId = batchId

            self.user = user
        }

        public func duplicate() -> InventoryBulkRequest {
            let dict = self.dictionary!
            let copy = InventoryBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([Size1].self, forKey: .sizes)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }

    /*
         Model: InventoryExportRequest
         Used By: Catalog
     */

    class InventoryExportRequest: Codable {
        public var store: [Int]?

        public var brand: [Int]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case store

            case brand

            case type
        }

        public init(brand: [Int]?, store: [Int]?, type: String?) {
            self.store = store

            self.brand = brand

            self.type = type
        }

        public func duplicate() -> InventoryExportRequest {
            let dict = self.dictionary!
            let copy = InventoryExportRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                store = try container.decode([Int].self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode([Int].self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(type, forKey: .type)
        }
    }

    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var status: String?

        public var url: String?

        public var sellerId: Int

        public var requestParams: [String: Any]?

        public var completedOn: String?

        public var taskId: String

        public var triggerOn: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case url

            case sellerId = "seller_id"

            case requestParams = "request_params"

            case completedOn = "completed_on"

            case taskId = "task_id"

            case triggerOn = "trigger_on"
        }

        public init(completedOn: String?, requestParams: [String: Any]?, sellerId: Int, status: String?, taskId: String, triggerOn: String?, url: String?) {
            self.status = status

            self.url = url

            self.sellerId = sellerId

            self.requestParams = requestParams

            self.completedOn = completedOn

            self.taskId = taskId

            self.triggerOn = triggerOn
        }

        public func duplicate() -> InventoryExportJob {
            let dict = self.dictionary!
            let copy = InventoryExportJob(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                requestParams = try container.decode([String: Any].self, forKey: .requestParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
        }
    }

    /*
         Model: FilerList
         Used By: Catalog
     */

    class FilerList: Codable {
        public var display: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case value
        }

        public init(display: String?, value: String?) {
            self.display = display

            self.value = value
        }

        public func duplicate() -> FilerList {
            let dict = self.dictionary!
            let copy = FilerList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: InventoryConfig
         Used By: Catalog
     */

    class InventoryConfig: Codable {
        public var data: [FilerList]?

        public var multivalues: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case multivalues
        }

        public init(data: [FilerList]?, multivalues: Bool?) {
            self.data = data

            self.multivalues = multivalues
        }

        public func duplicate() -> InventoryConfig {
            let dict = self.dictionary!
            let copy = InventoryConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([FilerList].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multivalues = try container.decode(Bool.self, forKey: .multivalues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(multivalues, forKey: .multivalues)
        }
    }

    /*
         Model: HsnUpsert
         Used By: Catalog
     */

    class HsnUpsert: Codable {
        public var threshold2: Double?

        public var taxOnMrp: Bool

        public var companyId: Int

        public var taxOnEsp: Bool?

        public var uid: Int?

        public var threshold1: Double

        public var hs2Code: String

        public var tax2: Double?

        public var hsnCode: String

        public var tax1: Double

        public enum CodingKeys: String, CodingKey {
            case threshold2

            case taxOnMrp = "tax_on_mrp"

            case companyId = "company_id"

            case taxOnEsp = "tax_on_esp"

            case uid

            case threshold1

            case hs2Code = "hs2_code"

            case tax2

            case hsnCode = "hsn_code"

            case tax1
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, tax1: Double, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool, threshold1: Double, threshold2: Double?, uid: Int?) {
            self.threshold2 = threshold2

            self.taxOnMrp = taxOnMrp

            self.companyId = companyId

            self.taxOnEsp = taxOnEsp

            self.uid = uid

            self.threshold1 = threshold1

            self.hs2Code = hs2Code

            self.tax2 = tax2

            self.hsnCode = hsnCode

            self.tax1 = tax1
        }

        public func duplicate() -> HsnUpsert {
            let dict = self.dictionary!
            let copy = HsnUpsert(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            threshold1 = try container.decode(Double.self, forKey: .threshold1)

            hs2Code = try container.decode(String.self, forKey: .hs2Code)

            do {
                tax2 = try container.decode(Double.self, forKey: .tax2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            tax1 = try container.decode(Double.self, forKey: .tax1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encode(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(tax1, forKey: .tax1)
        }
    }

    /*
         Model: HsnCodesObject
         Used By: Catalog
     */

    class HsnCodesObject: Codable {
        public var threshold2: Double?

        public var taxOnMrp: Bool?

        public var companyId: Int?

        public var id: String?

        public var modifiedOn: String?

        public var taxOnEsp: Bool?

        public var threshold1: Double?

        public var hs2Code: String?

        public var tax2: Double?

        public var hsnCode: String?

        public var tax1: Double?

        public enum CodingKeys: String, CodingKey {
            case threshold2

            case taxOnMrp = "tax_on_mrp"

            case companyId = "company_id"

            case id

            case modifiedOn = "modified_on"

            case taxOnEsp = "tax_on_esp"

            case threshold1

            case hs2Code = "hs2_code"

            case tax2

            case hsnCode = "hsn_code"

            case tax1
        }

        public init(companyId: Int?, hs2Code: String?, hsnCode: String?, id: String?, modifiedOn: String?, tax1: Double?, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool?, threshold1: Double?, threshold2: Double?) {
            self.threshold2 = threshold2

            self.taxOnMrp = taxOnMrp

            self.companyId = companyId

            self.id = id

            self.modifiedOn = modifiedOn

            self.taxOnEsp = taxOnEsp

            self.threshold1 = threshold1

            self.hs2Code = hs2Code

            self.tax2 = tax2

            self.hsnCode = hsnCode

            self.tax1 = tax1
        }

        public func duplicate() -> HsnCodesObject {
            let dict = self.dictionary!
            let copy = HsnCodesObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                threshold1 = try container.decode(Double.self, forKey: .threshold1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hs2Code = try container.decode(String.self, forKey: .hs2Code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tax2 = try container.decode(Double.self, forKey: .tax2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tax1 = try container.decode(Double.self, forKey: .tax1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(tax1, forKey: .tax1)
        }
    }

    /*
         Model: HsnCode
         Used By: Catalog
     */

    class HsnCode: Codable {
        public var data: HsnCodesObject?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: HsnCodesObject?) {
            self.data = data
        }

        public func duplicate() -> HsnCode {
            let dict = self.dictionary!
            let copy = HsnCode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(HsnCodesObject.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: PageResponse
         Used By: Catalog
     */

    class PageResponse: Codable {
        public var size: Int?

        public var current: String?

        public var hasPrevious: Bool?

        public var itemTotal: Int?

        public var hasNext: Bool?

        public enum CodingKeys: String, CodingKey {
            case size

            case current

            case hasPrevious = "has_previous"

            case itemTotal = "item_total"

            case hasNext = "has_next"
        }

        public init(current: String?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, size: Int?) {
            self.size = size

            self.current = current

            self.hasPrevious = hasPrevious

            self.itemTotal = itemTotal

            self.hasNext = hasNext
        }

        public func duplicate() -> PageResponse {
            let dict = self.dictionary!
            let copy = PageResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(String.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }

    /*
         Model: HsnCodesListingResponse
         Used By: Catalog
     */

    class HsnCodesListingResponse: Codable {
        public var page: PageResponse?

        public var items: [HsnCodesObject]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [HsnCodesObject]?, page: PageResponse?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> HsnCodesListingResponse {
            let dict = self.dictionary!
            let copy = HsnCodesListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(PageResponse.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([HsnCodesObject].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: BulkHsnUpsert
         Used By: Catalog
     */

    class BulkHsnUpsert: Codable {
        public var data: [HsnUpsert]

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [HsnUpsert]) {
            self.data = data
        }

        public func duplicate() -> BulkHsnUpsert {
            let dict = self.dictionary!
            let copy = BulkHsnUpsert(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([HsnUpsert].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: BulkHsnResponse
         Used By: Catalog
     */

    class BulkHsnResponse: Codable {
        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool?) {
            self.success = success
        }

        public func duplicate() -> BulkHsnResponse {
            let dict = self.dictionary!
            let copy = BulkHsnResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: BrandItem
         Used By: Catalog
     */

    class BrandItem: Codable {
        public var discount: String?

        public var action: Action?

        public var uid: Int?

        public var logo: Media?

        public var departments: [String]?

        public var banners: ImageUrls?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case discount

            case action

            case uid

            case logo

            case departments

            case banners

            case slug

            case name
        }

        public init(action: Action?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
            self.discount = discount

            self.action = action

            self.uid = uid

            self.logo = logo

            self.departments = departments

            self.banners = banners

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> BrandItem {
            let dict = self.dictionary!
            let copy = BrandItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: BrandListingResponse
         Used By: Catalog
     */

    class BrandListingResponse: Codable {
        public var page: Page

        public var items: [BrandItem]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [BrandItem]?, page: Page) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> BrandListingResponse {
            let dict = self.dictionary!
            let copy = BrandListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([BrandItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: Department
         Used By: Catalog
     */

    class Department: Codable {
        public var uid: Int?

        public var logo: Media?

        public var slug: String?

        public var name: String?

        public var priorityOrder: Int?

        public enum CodingKeys: String, CodingKey {
            case uid

            case logo

            case slug

            case name

            case priorityOrder = "priority_order"
        }

        public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.uid = uid

            self.logo = logo

            self.slug = slug

            self.name = name

            self.priorityOrder = priorityOrder
        }

        public func duplicate() -> Department {
            let dict = self.dictionary!
            let copy = Department(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        }
    }

    /*
         Model: DepartmentResponse
         Used By: Catalog
     */

    class DepartmentResponse: Codable {
        public var items: [Department]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [Department]?) {
            self.items = items
        }

        public func duplicate() -> DepartmentResponse {
            let dict = self.dictionary!
            let copy = DepartmentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Department].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: ThirdLevelChild
         Used By: Catalog
     */

    class ThirdLevelChild: Codable {
        public var action: Action?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var childs: [[String: Any]]?

        public var banners: ImageUrls?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case customJson = "_custom_json"

            case uid

            case childs

            case banners

            case slug

            case name
        }

        public init(action: Action?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.action = action

            self.customJson = customJson

            self.uid = uid

            self.childs = childs

            self.banners = banners

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> ThirdLevelChild {
            let dict = self.dictionary!
            let copy = ThirdLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([[String: Any]].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: SecondLevelChild
         Used By: Catalog
     */

    class SecondLevelChild: Codable {
        public var action: Action?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var childs: [ThirdLevelChild]?

        public var banners: ImageUrls?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case customJson = "_custom_json"

            case uid

            case childs

            case banners

            case slug

            case name
        }

        public init(action: Action?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.action = action

            self.customJson = customJson

            self.uid = uid

            self.childs = childs

            self.banners = banners

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> SecondLevelChild {
            let dict = self.dictionary!
            let copy = SecondLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([ThirdLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: Child
         Used By: Catalog
     */

    class Child: Codable {
        public var action: Action?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var childs: [SecondLevelChild]?

        public var banners: ImageUrls?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case customJson = "_custom_json"

            case uid

            case childs

            case banners

            case slug

            case name
        }

        public init(action: Action?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.action = action

            self.customJson = customJson

            self.uid = uid

            self.childs = childs

            self.banners = banners

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> Child {
            let dict = self.dictionary!
            let copy = Child(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([SecondLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CategoryItems
         Used By: Catalog
     */

    class CategoryItems: Codable {
        public var action: Action?

        public var uid: Int?

        public var childs: [Child]?

        public var banners: ImageUrls?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case uid

            case childs

            case banners

            case slug

            case name
        }

        public init(action: Action?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
            self.action = action

            self.uid = uid

            self.childs = childs

            self.banners = banners

            self.slug = slug

            self.name = name
        }

        public func duplicate() -> CategoryItems {
            let dict = self.dictionary!
            let copy = CategoryItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: DepartmentCategoryTree
         Used By: Catalog
     */

    class DepartmentCategoryTree: Codable {
        public var department: String?

        public var items: [CategoryItems]?

        public enum CodingKeys: String, CodingKey {
            case department

            case items
        }

        public init(department: String?, items: [CategoryItems]?) {
            self.department = department

            self.items = items
        }

        public func duplicate() -> DepartmentCategoryTree {
            let dict = self.dictionary!
            let copy = DepartmentCategoryTree(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                department = try container.decode(String.self, forKey: .department)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CategoryItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: DepartmentIdentifier
         Used By: Catalog
     */

    class DepartmentIdentifier: Codable {
        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case slug
        }

        public init(slug: String?, uid: Int?) {
            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> DepartmentIdentifier {
            let dict = self.dictionary!
            let copy = DepartmentIdentifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: CategoryListingResponse
         Used By: Catalog
     */

    class CategoryListingResponse: Codable {
        public var data: [DepartmentCategoryTree]?

        public var departments: [DepartmentIdentifier]?

        public enum CodingKeys: String, CodingKey {
            case data

            case departments
        }

        public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
            self.data = data

            self.departments = departments
        }

        public func duplicate() -> CategoryListingResponse {
            let dict = self.dictionary!
            let copy = CategoryListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([DepartmentCategoryTree].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(departments, forKey: .departments)
        }
    }

    /*
         Model: ApplicationProductListingResponse
         Used By: Catalog
     */

    class ApplicationProductListingResponse: Codable {
        public var filters: [ProductFilters]?

        public var page: Page

        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case page

            case items

            case sortOn = "sort_on"
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
            self.filters = filters

            self.page = page

            self.items = items

            self.sortOn = sortOn
        }

        public func duplicate() -> ApplicationProductListingResponse {
            let dict = self.dictionary!
            let copy = ApplicationProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }

    /*
         Model: ProductDetail
         Used By: Catalog
     */

    class ProductDetail: Codable {
        public var itemType: String?

        public var highlights: [String]?

        public var shortDescription: String?

        public var description: String?

        public var attributes: [String: Any]?

        public var uid: Int?

        public var rating: Double?

        public var slug: String

        public var name: String?

        public var teaserTag: [String: Any]?

        public var similars: [String]?

        public var type: String?

        public var brand: ProductBrand?

        public var itemCode: String?

        public var hasVariant: Bool?

        public var productOnlineDate: String?

        public var medias: [Media1]?

        public var promoMeta: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var tryouts: [String]?

        public var color: String?

        public var imageNature: String?

        public var ratingCount: Int?

        public enum CodingKeys: String, CodingKey {
            case itemType = "item_type"

            case highlights

            case shortDescription = "short_description"

            case description

            case attributes

            case uid

            case rating

            case slug

            case name

            case teaserTag = "teaser_tag"

            case similars

            case type

            case brand

            case itemCode = "item_code"

            case hasVariant = "has_variant"

            case productOnlineDate = "product_online_date"

            case medias

            case promoMeta = "promo_meta"

            case groupedAttributes = "grouped_attributes"

            case tryouts

            case color

            case imageNature = "image_nature"

            case ratingCount = "rating_count"
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.itemType = itemType

            self.highlights = highlights

            self.shortDescription = shortDescription

            self.description = description

            self.attributes = attributes

            self.uid = uid

            self.rating = rating

            self.slug = slug

            self.name = name

            self.teaserTag = teaserTag

            self.similars = similars

            self.type = type

            self.brand = brand

            self.itemCode = itemCode

            self.hasVariant = hasVariant

            self.productOnlineDate = productOnlineDate

            self.medias = medias

            self.promoMeta = promoMeta

            self.groupedAttributes = groupedAttributes

            self.tryouts = tryouts

            self.color = color

            self.imageNature = imageNature

            self.ratingCount = ratingCount
        }

        public func duplicate() -> ProductDetail {
            let dict = self.dictionary!
            let copy = ProductDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media1].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        }
    }

    /*
         Model: ArticleQuery
         Used By: Catalog
     */

    class ArticleQuery: Codable {
        public var size: String

        public var ignoredStores: [Int]?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case ignoredStores = "ignored_stores"

            case itemId = "item_id"
        }

        public init(ignoredStores: [Int]?, itemId: Int, size: String) {
            self.size = size

            self.ignoredStores = ignoredStores

            self.itemId = itemId
        }

        public func duplicate() -> ArticleQuery {
            let dict = self.dictionary!
            let copy = ArticleQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }

    /*
         Model: AssignStoreArticle
         Used By: Catalog
     */

    class AssignStoreArticle: Codable {
        public var articleAssignment: ArticleAssignment?

        public var query: ArticleQuery?

        public var quantity: Int?

        public var meta: [String: Any]?

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case articleAssignment = "article_assignment"

            case query

            case quantity

            case meta

            case groupId = "group_id"
        }

        public init(articleAssignment: ArticleAssignment?, groupId: String?, meta: [String: Any]?, quantity: Int?, query: ArticleQuery?) {
            self.articleAssignment = articleAssignment

            self.query = query

            self.quantity = quantity

            self.meta = meta

            self.groupId = groupId
        }

        public func duplicate() -> AssignStoreArticle {
            let dict = self.dictionary!
            let copy = AssignStoreArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode(ArticleQuery.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(groupId, forKey: .groupId)
        }
    }

    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var storeIds: [Int]?

        public var companyId: Int?

        public var channelType: String?

        public var pincode: String

        public var articles: [AssignStoreArticle]

        public var appId: String

        public var channelIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case companyId = "company_id"

            case channelType = "channel_type"

            case pincode

            case articles

            case appId = "app_id"

            case channelIdentifier = "channel_identifier"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String?, channelType: String?, companyId: Int?, pincode: String, storeIds: [Int]?) {
            self.storeIds = storeIds

            self.companyId = companyId

            self.channelType = channelType

            self.pincode = pincode

            self.articles = articles

            self.appId = appId

            self.channelIdentifier = channelIdentifier
        }

        public func duplicate() -> AssignStore {
            let dict = self.dictionary!
            let copy = AssignStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)
        }
    }

    /*
         Model: ArticleAssignment1
         Used By: Catalog
     */

    class ArticleAssignment1: Codable {
        public var level: String?

        public var strategy: String?

        public enum CodingKeys: String, CodingKey {
            case level

            case strategy
        }

        public init(level: String?, strategy: String?) {
            self.level = level

            self.strategy = strategy
        }

        public func duplicate() -> ArticleAssignment1 {
            let dict = self.dictionary!
            let copy = ArticleAssignment1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(strategy, forKey: .strategy)
        }
    }

    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var size: String

        public var storeId: Int?

        public var status: Bool

        public var storePincode: Int?

        public var itemId: Int

        public var id: String?

        public var index: Int?

        public var articleAssignment: ArticleAssignment1

        public var companyId: Int?

        public var sCity: String?

        public var priceMarked: Int?

        public var uid: String?

        public var strategyWiseListing: [[String: Any]]?

        public var quantity: Int

        public var meta: [String: Any]?

        public var priceEffective: Int?

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case storeId = "store_id"

            case status

            case storePincode = "store_pincode"

            case itemId = "item_id"

            case id = "_id"

            case index

            case articleAssignment = "article_assignment"

            case companyId = "company_id"

            case sCity = "s_city"

            case priceMarked = "price_marked"

            case uid

            case strategyWiseListing = "strategy_wise_listing"

            case quantity

            case meta

            case priceEffective = "price_effective"

            case groupId = "group_id"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int?, groupId: String?, index: Int?, itemId: Int, meta: [String: Any]?, priceEffective: Int?, priceMarked: Int?, quantity: Int, size: String, status: Bool, storeId: Int?, storePincode: Int?, strategyWiseListing: [[String: Any]]?, sCity: String?, uid: String?, id: String?) {
            self.size = size

            self.storeId = storeId

            self.status = status

            self.storePincode = storePincode

            self.itemId = itemId

            self.id = id

            self.index = index

            self.articleAssignment = articleAssignment

            self.companyId = companyId

            self.sCity = sCity

            self.priceMarked = priceMarked

            self.uid = uid

            self.strategyWiseListing = strategyWiseListing

            self.quantity = quantity

            self.meta = meta

            self.priceEffective = priceEffective

            self.groupId = groupId
        }

        public func duplicate() -> StoreAssignResponse {
            let dict = self.dictionary!
            let copy = StoreAssignResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(groupId, forKey: .groupId)
        }
    }

    /*
         Model: SellerPhoneNumber
         Used By: Catalog
     */

    class SellerPhoneNumber: Codable {
        public var number: String

        public var countryCode: Int

        public enum CodingKeys: String, CodingKey {
            case number

            case countryCode = "country_code"
        }

        public init(countryCode: Int, number: String) {
            self.number = number

            self.countryCode = countryCode
        }

        public func duplicate() -> SellerPhoneNumber {
            let dict = self.dictionary!
            let copy = SellerPhoneNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            number = try container.decode(String.self, forKey: .number)

            countryCode = try container.decode(Int.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(number, forKey: .number)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }

    /*
         Model: LocationManagerSerializer
         Used By: Catalog
     */

    class LocationManagerSerializer: Codable {
        public var email: String?

        public var name: String?

        public var mobileNo: SellerPhoneNumber

        public enum CodingKeys: String, CodingKey {
            case email

            case name

            case mobileNo = "mobile_no"
        }

        public init(email: String?, mobileNo: SellerPhoneNumber, name: String?) {
            self.email = email

            self.name = name

            self.mobileNo = mobileNo
        }

        public func duplicate() -> LocationManagerSerializer {
            let dict = self.dictionary!
            let copy = LocationManagerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
        }
    }

    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var legalName: String?

        public var url: String?

        public var verified: Bool?

        public var value: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case legalName = "legal_name"

            case url

            case verified

            case value

            case type
        }

        public init(legalName: String?, type: String, url: String?, value: String, verified: Bool?) {
            self.legalName = legalName

            self.url = url

            self.verified = verified

            self.value = value

            self.type = type
        }

        public func duplicate() -> Document {
            let dict = self.dictionary!
            let copy = Document(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: UserSerializer1
         Used By: Catalog
     */

    class UserSerializer1: Codable {
        public var username: String?

        public var contact: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case contact

            case userId = "user_id"
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.username = username

            self.contact = contact

            self.userId = userId
        }

        public func duplicate() -> UserSerializer1 {
            let dict = self.dictionary!
            let copy = UserSerializer1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: ProductReturnConfigSerializer
         Used By: Catalog
     */

    class ProductReturnConfigSerializer: Codable {
        public var storeUid: Int?

        public var onSameStore: Bool?

        public enum CodingKeys: String, CodingKey {
            case storeUid = "store_uid"

            case onSameStore = "on_same_store"
        }

        public init(onSameStore: Bool?, storeUid: Int?) {
            self.storeUid = storeUid

            self.onSameStore = onSameStore
        }

        public func duplicate() -> ProductReturnConfigSerializer {
            let dict = self.dictionary!
            let copy = ProductReturnConfigSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeUid = try container.decode(Int.self, forKey: .storeUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                onSameStore = try container.decode(Bool.self, forKey: .onSameStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeUid, forKey: .storeUid)

            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
        }
    }

    /*
         Model: UserSerializer2
         Used By: Catalog
     */

    class UserSerializer2: Codable {
        public var username: String?

        public var contact: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case contact

            case userId = "user_id"
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.username = username

            self.contact = contact

            self.userId = userId
        }

        public func duplicate() -> UserSerializer2 {
            let dict = self.dictionary!
            let copy = UserSerializer2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: GetAddressSerializer
         Used By: Catalog
     */

    class GetAddressSerializer: Codable {
        public var countryCode: String?

        public var latitude: Double?

        public var addressType: String?

        public var landmark: String?

        public var country: String?

        public var pincode: Int?

        public var address1: String?

        public var city: String?

        public var longitude: Double?

        public var state: String?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case latitude

            case addressType = "address_type"

            case landmark

            case country

            case pincode

            case address1

            case city

            case longitude

            case state

            case address2
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            self.countryCode = countryCode

            self.latitude = latitude

            self.addressType = addressType

            self.landmark = landmark

            self.country = country

            self.pincode = pincode

            self.address1 = address1

            self.city = city

            self.longitude = longitude

            self.state = state

            self.address2 = address2
        }

        public func duplicate() -> GetAddressSerializer {
            let dict = self.dictionary!
            let copy = GetAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latitude = try container.decode(Double.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }

    /*
         Model: GetCompanySerializer
         Used By: Catalog
     */

    class GetCompanySerializer: Codable {
        public var companyType: String?

        public var verifiedBy: UserSerializer2?

        public var modifiedOn: String?

        public var businessType: String?

        public var stage: String?

        public var addresses: [GetAddressSerializer]?

        public var modifiedBy: UserSerializer2?

        public var uid: Int?

        public var createdOn: String?

        public var verifiedOn: String?

        public var rejectReason: String?

        public var name: String?

        public var createdBy: UserSerializer2?

        public enum CodingKeys: String, CodingKey {
            case companyType = "company_type"

            case verifiedBy = "verified_by"

            case modifiedOn = "modified_on"

            case businessType = "business_type"

            case stage

            case addresses

            case modifiedBy = "modified_by"

            case uid

            case createdOn = "created_on"

            case verifiedOn = "verified_on"

            case rejectReason = "reject_reason"

            case name

            case createdBy = "created_by"
        }

        public init(addresses: [GetAddressSerializer]?, businessType: String?, companyType: String?, createdBy: UserSerializer2?, createdOn: String?, modifiedBy: UserSerializer2?, modifiedOn: String?, name: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer2?, verifiedOn: String?) {
            self.companyType = companyType

            self.verifiedBy = verifiedBy

            self.modifiedOn = modifiedOn

            self.businessType = businessType

            self.stage = stage

            self.addresses = addresses

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.createdOn = createdOn

            self.verifiedOn = verifiedOn

            self.rejectReason = rejectReason

            self.name = name

            self.createdBy = createdBy
        }

        public func duplicate() -> GetCompanySerializer {
            let dict = self.dictionary!
            let copy = GetCompanySerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer2.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer2.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer2.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: InvoiceCredSerializer
         Used By: Catalog
     */

    class InvoiceCredSerializer: Codable {
        public var password: String?

        public var enabled: Bool?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case password

            case enabled

            case username
        }

        public init(enabled: Bool?, password: String?, username: String?) {
            self.password = password

            self.enabled = enabled

            self.username = username
        }

        public func duplicate() -> InvoiceCredSerializer {
            let dict = self.dictionary!
            let copy = InvoiceCredSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: InvoiceDetailsSerializer
         Used By: Catalog
     */

    class InvoiceDetailsSerializer: Codable {
        public var eInvoice: InvoiceCredSerializer?

        public var eWaybill: InvoiceCredSerializer?

        public enum CodingKeys: String, CodingKey {
            case eInvoice = "e_invoice"

            case eWaybill = "e_waybill"
        }

        public init(eInvoice: InvoiceCredSerializer?, eWaybill: InvoiceCredSerializer?) {
            self.eInvoice = eInvoice

            self.eWaybill = eWaybill
        }

        public func duplicate() -> InvoiceDetailsSerializer {
            let dict = self.dictionary!
            let copy = InvoiceDetailsSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eInvoice = try container.decode(InvoiceCredSerializer.self, forKey: .eInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eWaybill = try container.decode(InvoiceCredSerializer.self, forKey: .eWaybill)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)

            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
        }
    }

    /*
         Model: LocationIntegrationType
         Used By: Catalog
     */

    class LocationIntegrationType: Codable {
        public var inventory: String?

        public var order: String?

        public enum CodingKeys: String, CodingKey {
            case inventory

            case order
        }

        public init(inventory: String?, order: String?) {
            self.inventory = inventory

            self.order = order
        }

        public func duplicate() -> LocationIntegrationType {
            let dict = self.dictionary!
            let copy = LocationIntegrationType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                inventory = try container.decode(String.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(String.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }

    /*
         Model: LocationTimingSerializer
         Used By: Catalog
     */

    class LocationTimingSerializer: Codable {
        public var hour: Int?

        public var minute: Int?

        public enum CodingKeys: String, CodingKey {
            case hour

            case minute
        }

        public init(hour: Int?, minute: Int?) {
            self.hour = hour

            self.minute = minute
        }

        public func duplicate() -> LocationTimingSerializer {
            let dict = self.dictionary!
            let copy = LocationTimingSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hour = try container.decode(Int.self, forKey: .hour)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minute = try container.decode(Int.self, forKey: .minute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hour, forKey: .hour)

            try? container.encodeIfPresent(minute, forKey: .minute)
        }
    }

    /*
         Model: LocationDayWiseSerializer
         Used By: Catalog
     */

    class LocationDayWiseSerializer: Codable {
        public var weekday: String

        public var opening: LocationTimingSerializer?

        public var open: Bool

        public var closing: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case weekday

            case opening

            case open

            case closing
        }

        public init(closing: LocationTimingSerializer?, open: Bool, opening: LocationTimingSerializer?, weekday: String) {
            self.weekday = weekday

            self.opening = opening

            self.open = open

            self.closing = closing
        }

        public func duplicate() -> LocationDayWiseSerializer {
            let dict = self.dictionary!
            let copy = LocationDayWiseSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weekday = try container.decode(String.self, forKey: .weekday)

            do {
                opening = try container.decode(LocationTimingSerializer.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            open = try container.decode(Bool.self, forKey: .open)

            do {
                closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(opening, forKey: .opening)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(closing, forKey: .closing)
        }
    }

    /*
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var manager: LocationManagerSerializer?

        public var code: String

        public var displayName: String

        public var documents: [Document]?

        public var warnings: [String: Any]?

        public var modifiedBy: UserSerializer1?

        public var createdOn: String?

        public var phoneNumber: String

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var company: GetCompanySerializer?

        public var createdBy: UserSerializer1?

        public var customJson: [String: Any]?

        public var modifiedOn: String?

        public var uid: Int?

        public var name: String

        public var verifiedBy: UserSerializer1?

        public var stage: String?

        public var verifiedOn: String?

        public var address: GetAddressSerializer

        public var gstCredentials: InvoiceDetailsSerializer?

        public var notificationEmails: [String]?

        public var integrationType: LocationIntegrationType?

        public var storeType: String?

        public var timing: [LocationDayWiseSerializer]?

        public var contactNumbers: [SellerPhoneNumber]?

        public enum CodingKeys: String, CodingKey {
            case manager

            case code

            case displayName = "display_name"

            case documents

            case warnings

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case phoneNumber = "phone_number"

            case productReturnConfig = "product_return_config"

            case company

            case createdBy = "created_by"

            case customJson = "_custom_json"

            case modifiedOn = "modified_on"

            case uid

            case name

            case verifiedBy = "verified_by"

            case stage

            case verifiedOn = "verified_on"

            case address

            case gstCredentials = "gst_credentials"

            case notificationEmails = "notification_emails"

            case integrationType = "integration_type"

            case storeType = "store_type"

            case timing

            case contactNumbers = "contact_numbers"
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer?, contactNumbers: [SellerPhoneNumber]?, createdBy: UserSerializer1?, createdOn: String?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, integrationType: LocationIntegrationType?, manager: LocationManagerSerializer?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, notificationEmails: [String]?, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            self.manager = manager

            self.code = code

            self.displayName = displayName

            self.documents = documents

            self.warnings = warnings

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.phoneNumber = phoneNumber

            self.productReturnConfig = productReturnConfig

            self.company = company

            self.createdBy = createdBy

            self.customJson = customJson

            self.modifiedOn = modifiedOn

            self.uid = uid

            self.name = name

            self.verifiedBy = verifiedBy

            self.stage = stage

            self.verifiedOn = verifiedOn

            self.address = address

            self.gstCredentials = gstCredentials

            self.notificationEmails = notificationEmails

            self.integrationType = integrationType

            self.storeType = storeType

            self.timing = timing

            self.contactNumbers = contactNumbers
        }

        public func duplicate() -> GetLocationSerializer {
            let dict = self.dictionary!
            let copy = GetLocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                documents = try container.decode([Document].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
        }
    }

    /*
         Model: LocationListSerializer
         Used By: Catalog
     */

    class LocationListSerializer: Codable {
        public var page: Page?

        public var items: [GetLocationSerializer]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [GetLocationSerializer]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> LocationListSerializer {
            let dict = self.dictionary!
            let copy = LocationListSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetLocationSerializer].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

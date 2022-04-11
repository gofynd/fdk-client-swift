import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SearchKeywordResult
         Used By: Catalog
     */

    class SearchKeywordResult: Codable {
        public var query: [String: Any]

        public var sortOn: String

        public enum CodingKeys: String, CodingKey {
            case query

            case sortOn = "sort_on"
        }

        public init(query: [String: Any], sortOn: String) {
            self.query = query

            self.sortOn = sortOn
        }

        public func duplicate() -> SearchKeywordResult {
            let dict = self.dictionary!
            let copy = SearchKeywordResult(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            query = try container.decode([String: Any].self, forKey: .query)

            sortOn = try container.decode(String.self, forKey: .sortOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }

    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var appId: String?

        public var words: [String]?

        public var result: SearchKeywordResult

        public var isActive: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case words

            case result

            case isActive = "is_active"

            case customJson = "_custom_json"
        }

        public init(appId: String?, isActive: Bool?, result: SearchKeywordResult, words: [String]?, customJson: [String: Any]?) {
            self.appId = appId

            self.words = words

            self.result = result

            self.isActive = isActive

            self.customJson = customJson
        }

        public func duplicate() -> CreateSearchKeyword {
            let dict = self.dictionary!
            let copy = CreateSearchKeyword(dictionary: dict)!
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
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: GetSearchWordsData
         Used By: Catalog
     */

    class GetSearchWordsData: Codable {
        public var appId: String?

        public var words: [String]?

        public var result: [String: Any]?

        public var customJson: [String: Any]?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case words

            case result

            case customJson = "_custom_json"

            case uid
        }

        public init(appId: String?, result: [String: Any]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.appId = appId

            self.words = words

            self.result = result

            self.customJson = customJson

            self.uid = uid
        }

        public func duplicate() -> GetSearchWordsData {
            let dict = self.dictionary!
            let copy = GetSearchWordsData(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: ErrorResponse
         Used By: Catalog
     */

    class ErrorResponse: Codable {
        public var meta: [String: Any]?

        public var status: Int?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case status

            case message

            case code
        }

        public init(code: String?, message: String?, meta: [String: Any]?, status: Int?) {
            self.meta = meta

            self.status = status

            self.message = message

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
                status = try container.decode(Int.self, forKey: .status)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
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
         Model: GetSearchWordsDetailResponse
         Used By: Catalog
     */

    class GetSearchWordsDetailResponse: Codable {
        public var items: GetSearchWordsData?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: GetSearchWordsData?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetSearchWordsDetailResponse {
            let dict = self.dictionary!
            let copy = GetSearchWordsDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(GetSearchWordsData.self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: GetSearchWordsResponse
         Used By: Catalog
     */

    class GetSearchWordsResponse: Codable {
        public var items: [GetSearchWordsData]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [GetSearchWordsData]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetSearchWordsResponse {
            let dict = self.dictionary!
            let copy = GetSearchWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetSearchWordsData].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: AutocompletePageAction
         Used By: Catalog
     */

    class AutocompletePageAction: Codable {
        public var query: [String: Any]?

        public var type: String?

        public var url: String?

        public var params: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case query

            case type

            case url

            case params
        }

        public init(params: [String: Any]?, query: [String: Any]?, type: String?, url: String?) {
            self.query = query

            self.type = type

            self.url = url

            self.params = params
        }

        public func duplicate() -> AutocompletePageAction {
            let dict = self.dictionary!
            let copy = AutocompletePageAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode([String: Any].self, forKey: .query)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(params, forKey: .params)
        }
    }

    /*
         Model: AutocompleteAction
         Used By: Catalog
     */

    class AutocompleteAction: Codable {
        public var type: String?

        public var page: AutocompletePageAction?

        public enum CodingKeys: String, CodingKey {
            case type

            case page
        }

        public init(page: AutocompletePageAction?, type: String?) {
            self.type = type

            self.page = page
        }

        public func duplicate() -> AutocompleteAction {
            let dict = self.dictionary!
            let copy = AutocompleteAction(dictionary: dict)!
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
                page = try container.decode(AutocompletePageAction.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Media
         Used By: Catalog
     */

    class Media: Codable {
        public var type: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case url
        }

        public init(type: String?, url: String?) {
            self.type = type

            self.url = url
        }

        public func duplicate() -> Media {
            let dict = self.dictionary!
            let copy = Media(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: AutocompleteResult
         Used By: Catalog
     */

    class AutocompleteResult: Codable {
        public var display: String?

        public var action: AutocompleteAction?

        public var customJson: [String: Any]?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case display

            case action

            case customJson = "_custom_json"

            case logo
        }

        public init(action: AutocompleteAction?, display: String?, logo: Media?, customJson: [String: Any]?) {
            self.display = display

            self.action = action

            self.customJson = customJson

            self.logo = logo
        }

        public func duplicate() -> AutocompleteResult {
            let dict = self.dictionary!
            let copy = AutocompleteResult(dictionary: dict)!
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
                action = try container.decode(AutocompleteAction.self, forKey: .action)

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
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: CreateAutocompleteKeyword
         Used By: Catalog
     */

    class CreateAutocompleteKeyword: Codable {
        public var results: [AutocompleteResult]?

        public var appId: String?

        public var words: [String]?

        public var isActive: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case results

            case appId = "app_id"

            case words

            case isActive = "is_active"

            case customJson = "_custom_json"
        }

        public init(appId: String?, isActive: Bool?, results: [AutocompleteResult]?, words: [String]?, customJson: [String: Any]?) {
            self.results = results

            self.appId = appId

            self.words = words

            self.isActive = isActive

            self.customJson = customJson
        }

        public func duplicate() -> CreateAutocompleteKeyword {
            let dict = self.dictionary!
            let copy = CreateAutocompleteKeyword(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                results = try container.decode([AutocompleteResult].self, forKey: .results)

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
                words = try container.decode([String].self, forKey: .words)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var results: [[String: Any]]?

        public var appId: String?

        public var words: [String]?

        public var customJson: [String: Any]?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case results

            case appId = "app_id"

            case words

            case customJson = "_custom_json"

            case uid
        }

        public init(appId: String?, results: [[String: Any]]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.results = results

            self.appId = appId

            self.words = words

            self.customJson = customJson

            self.uid = uid
        }

        public func duplicate() -> GetAutocompleteWordsData {
            let dict = self.dictionary!
            let copy = GetAutocompleteWordsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                results = try container.decode([[String: Any]].self, forKey: .results)

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
                words = try container.decode([String].self, forKey: .words)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: GetAutocompleteWordsResponse
         Used By: Catalog
     */

    class GetAutocompleteWordsResponse: Codable {
        public var items: [GetAutocompleteWordsData]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [GetAutocompleteWordsData]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetAutocompleteWordsResponse {
            let dict = self.dictionary!
            let copy = GetAutocompleteWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetAutocompleteWordsData].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CreateAutocompleteWordsResponse
         Used By: Catalog
     */

    class CreateAutocompleteWordsResponse: Codable {
        public var appId: String?

        public var words: [String]?

        public var results: [[String: Any]]?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case words

            case results

            case customJson = "_custom_json"
        }

        public init(appId: String?, results: [[String: Any]]?, words: [String]?, customJson: [String: Any]?) {
            self.appId = appId

            self.words = words

            self.results = results

            self.customJson = customJson
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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var productUid: Int

        public var allowRemove: Bool?

        public var minQuantity: Int

        public var autoSelect: Bool?

        public var autoAddToCart: Bool?

        public var maxQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case productUid = "product_uid"

            case allowRemove = "allow_remove"

            case minQuantity = "min_quantity"

            case autoSelect = "auto_select"

            case autoAddToCart = "auto_add_to_cart"

            case maxQuantity = "max_quantity"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.productUid = productUid

            self.allowRemove = allowRemove

            self.minQuantity = minQuantity

            self.autoSelect = autoSelect

            self.autoAddToCart = autoAddToCart

            self.maxQuantity = maxQuantity
        }

        public func duplicate() -> ProductBundleItem {
            let dict = self.dictionary!
            let copy = ProductBundleItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

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

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
        }
    }

    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var pageVisibility: [String]?

        public var choice: String

        public var meta: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var isActive: Bool

        public var products: [ProductBundleItem]

        public var name: String

        public var slug: String

        public var sameStoreAssignment: Bool?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case pageVisibility = "page_visibility"

            case choice

            case meta

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case products

            case name

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case logo
        }

        public init(choice: String, createdBy: [String: Any]?, createdOn: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.pageVisibility = pageVisibility

            self.choice = choice

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.products = products

            self.name = name

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.logo = logo
        }

        public func duplicate() -> ProductBundleRequest {
            let dict = self.dictionary!
            let copy = ProductBundleRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            choice = try container.decode(String.self, forKey: .choice)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encode(logo, forKey: .logo)
        }
    }

    /*
         Model: GetProductBundleCreateResponse
         Used By: Catalog
     */

    class GetProductBundleCreateResponse: Codable {
        public var companyId: Int?

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var id: String?

        public var pageVisibility: [String]?

        public var choice: String

        public var meta: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var isActive: Bool

        public var products: [ProductBundleItem]

        public var name: String

        public var slug: String

        public var sameStoreAssignment: Bool?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case id

            case pageVisibility = "page_visibility"

            case choice

            case meta

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case products

            case name

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case logo
        }

        public init(choice: String, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, id: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.id = id

            self.pageVisibility = pageVisibility

            self.choice = choice

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.products = products

            self.name = name

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.logo = logo
        }

        public func duplicate() -> GetProductBundleCreateResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleCreateResponse(dictionary: dict)!
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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            choice = try container.decode(String.self, forKey: .choice)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encode(logo, forKey: .logo)
        }
    }

    /*
         Model: GetProductBundleListingResponse
         Used By: Catalog
     */

    class GetProductBundleListingResponse: Codable {
        public var items: [GetProductBundleCreateResponse]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [GetProductBundleCreateResponse]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetProductBundleListingResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetProductBundleCreateResponse].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var modifiedOn: String?

        public var pageVisibility: [String]?

        public var choice: String

        public var meta: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var isActive: Bool

        public var products: [ProductBundleItem]

        public var name: String

        public var slug: String

        public var sameStoreAssignment: Bool?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case pageVisibility = "page_visibility"

            case choice

            case meta

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case products

            case name

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case logo
        }

        public init(choice: String, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.modifiedOn = modifiedOn

            self.pageVisibility = pageVisibility

            self.choice = choice

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.products = products

            self.name = name

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.logo = logo
        }

        public func duplicate() -> ProductBundleUpdateRequest {
            let dict = self.dictionary!
            let copy = ProductBundleUpdateRequest(dictionary: dict)!
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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            choice = try container.decode(String.self, forKey: .choice)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encode(logo, forKey: .logo)
        }
    }

    /*
         Model: Size
         Used By: Catalog
     */

    class Size: Codable {
        public var quantity: Int?

        public var value: String?

        public var isAvailable: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case value

            case isAvailable = "is_available"

            case display
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.quantity = quantity

            self.value = value

            self.isAvailable = isAvailable

            self.display = display
        }

        public func duplicate() -> Size {
            let dict = self.dictionary!
            let copy = Size(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

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

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: Price
         Used By: Catalog
     */

    class Price: Codable {
        public var minMarked: Double?

        public var maxMarked: Double?

        public var minEffective: Double?

        public var maxEffective: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case minMarked = "min_marked"

            case maxMarked = "max_marked"

            case minEffective = "min_effective"

            case maxEffective = "max_effective"

            case currency
        }

        public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
            self.minMarked = minMarked

            self.maxMarked = maxMarked

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
                minMarked = try container.decode(Double.self, forKey: .minMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxMarked = try container.decode(Double.self, forKey: .maxMarked)

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

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var sizes: [String]?

        public var shortDescription: String?

        public var countryOfOrigin: String?

        public var images: [String]?

        public var itemCode: String?

        public var identifier: [String: Any]?

        public var attributes: [String: Any]?

        public var quantity: Int?

        public var name: String?

        public var uid: Int?

        public var slug: String?

        public var price: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case shortDescription = "short_description"

            case countryOfOrigin = "country_of_origin"

            case images

            case itemCode = "item_code"

            case identifier

            case attributes

            case quantity

            case name

            case uid

            case slug

            case price
        }

        public init(attributes: [String: Any]?, countryOfOrigin: String?, identifier: [String: Any]?, images: [String]?, itemCode: String?, name: String?, price: [String: Any]?, quantity: Int?, shortDescription: String?, sizes: [String]?, slug: String?, uid: Int?) {
            self.sizes = sizes

            self.shortDescription = shortDescription

            self.countryOfOrigin = countryOfOrigin

            self.images = images

            self.itemCode = itemCode

            self.identifier = identifier

            self.attributes = attributes

            self.quantity = quantity

            self.name = name

            self.uid = uid

            self.slug = slug

            self.price = price
        }

        public func duplicate() -> LimitedProductData {
            let dict = self.dictionary!
            let copy = LimitedProductData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: GetProducts
         Used By: Catalog
     */

    class GetProducts: Codable {
        public var allowRemove: Bool?

        public var productUid: Int?

        public var sizes: [Size]?

        public var minQuantity: Int?

        public var price: Price?

        public var autoSelect: Bool?

        public var autoAddToCart: Bool?

        public var productDetails: LimitedProductData?

        public var maxQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case allowRemove = "allow_remove"

            case productUid = "product_uid"

            case sizes

            case minQuantity = "min_quantity"

            case price

            case autoSelect = "auto_select"

            case autoAddToCart = "auto_add_to_cart"

            case productDetails = "product_details"

            case maxQuantity = "max_quantity"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price?, productDetails: LimitedProductData?, productUid: Int?, sizes: [Size]?) {
            self.allowRemove = allowRemove

            self.productUid = productUid

            self.sizes = sizes

            self.minQuantity = minQuantity

            self.price = price

            self.autoSelect = autoSelect

            self.autoAddToCart = autoAddToCart

            self.productDetails = productDetails

            self.maxQuantity = maxQuantity
        }

        public func duplicate() -> GetProducts {
            let dict = self.dictionary!
            let copy = GetProducts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

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

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

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
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

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
                productDetails = try container.decode(LimitedProductData.self, forKey: .productDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
        }
    }

    /*
         Model: GetProductBundleResponse
         Used By: Catalog
     */

    class GetProductBundleResponse: Codable {
        public var companyId: Int?

        public var pageVisibility: [String]?

        public var meta: [String: Any]?

        public var choice: String?

        public var isActive: Bool?

        public var products: [GetProducts]?

        public var name: String?

        public var slug: String?

        public var sameStoreAssignment: Bool?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case pageVisibility = "page_visibility"

            case meta

            case choice

            case isActive = "is_active"

            case products

            case name

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case logo
        }

        public init(choice: String?, companyId: Int?, isActive: Bool?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [GetProducts]?, sameStoreAssignment: Bool?, slug: String?) {
            self.companyId = companyId

            self.pageVisibility = pageVisibility

            self.meta = meta

            self.choice = choice

            self.isActive = isActive

            self.products = products

            self.name = name

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.logo = logo
        }

        public func duplicate() -> GetProductBundleResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleResponse(dictionary: dict)!
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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

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
                choice = try container.decode(String.self, forKey: .choice)

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
                name = try container.decode(String.self, forKey: .name)

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
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: Meta
         Used By: Catalog
     */

    class Meta: Codable {
        public var unit: String?

        public var values: [[String: Any]]?

        public var headers: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case unit

            case values

            case headers
        }

        public init(headers: [String: Any]?, unit: String?, values: [[String: Any]]?) {
            self.unit = unit

            self.values = values

            self.headers = headers
        }

        public func duplicate() -> Meta {
            let dict = self.dictionary!
            let copy = Meta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

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
                headers = try container.decode([String: Any].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(headers, forKey: .headers)
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

        public var createdBy: [String: Any]?

        public var tag: String?

        public var modifiedOn: String?

        public var brandId: Int?

        public var id: String?

        public var active: Bool?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var guide: Guide?

        public var title: String

        public var image: String?

        public var description: String?

        public var name: String

        public var subtitle: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case tag

            case modifiedOn = "modified_on"

            case brandId = "brand_id"

            case id

            case active

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case guide

            case title

            case image

            case description

            case name

            case subtitle
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, description: String?, guide: Guide?, id: String?, image: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, subtitle: String?, tag: String?, title: String) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.tag = tag

            self.modifiedOn = modifiedOn

            self.brandId = brandId

            self.id = id

            self.active = active

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.guide = guide

            self.title = title

            self.image = image

            self.description = description

            self.name = name

            self.subtitle = subtitle
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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                id = try container.decode(String.self, forKey: .id)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                guide = try container.decode(Guide.self, forKey: .guide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                image = try container.decode(String.self, forKey: .image)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }

    /*
         Model: SuccessResponse
         Used By: Catalog
     */

    class SuccessResponse: Codable {
        public var success: Bool?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case success

            case uid
        }

        public init(success: Bool?, uid: Int?) {
            self.success = success

            self.uid = uid
        }

        public func duplicate() -> SuccessResponse {
            let dict = self.dictionary!
            let copy = SuccessResponse(dictionary: dict)!
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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: ListSizeGuide
         Used By: Catalog
     */

    class ListSizeGuide: Codable {
        public var items: [[String: Any]]?

        public var page: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ListSizeGuide {
            let dict = self.dictionary!
            let copy = ListSizeGuide(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: SizeGuideResponse
         Used By: Catalog
     */

    class SizeGuideResponse: Codable {
        public var companyId: Int?

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var tag: String?

        public var brandId: Int?

        public var id: String?

        public var active: Bool?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var guide: [String: Any]?

        public var title: String?

        public var name: String?

        public var subtitle: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case tag

            case brandId = "brand_id"

            case id

            case active

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case guide

            case title

            case name

            case subtitle
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, guide: [String: Any]?, id: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, subtitle: String?, tag: String?, title: String?) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.tag = tag

            self.brandId = brandId

            self.id = id

            self.active = active

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.guide = guide

            self.title = title

            self.name = name

            self.subtitle = subtitle
        }

        public func duplicate() -> SizeGuideResponse {
            let dict = self.dictionary!
            let copy = SizeGuideResponse(dictionary: dict)!
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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                brandId = try container.decode(Int.self, forKey: .brandId)

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
                active = try container.decode(Bool.self, forKey: .active)

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
                title = try container.decode(String.self, forKey: .title)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }

    /*
         Model: MetaFields
         Used By: Catalog
     */

    class MetaFields: Codable {
        public var value: String

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case value

            case key
        }

        public init(key: String, value: String) {
            self.value = value

            self.key = key
        }

        public func duplicate() -> MetaFields {
            let dict = self.dictionary!
            let copy = MetaFields(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
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
        public var display: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case key
        }

        public init(display: String?, key: String?) {
            self.display = display

            self.key = key
        }

        public func duplicate() -> MetaDataListingSortMetaResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingSortMetaResponse(dictionary: dict)!
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
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)
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
        public var units: [[String: Any]]?

        public var display: String?

        public var filterTypes: [String]?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case units

            case display

            case filterTypes = "filter_types"

            case key
        }

        public init(display: String?, filterTypes: [String]?, key: String?, units: [[String: Any]]?) {
            self.units = units

            self.display = display

            self.filterTypes = filterTypes

            self.key = key
        }

        public func duplicate() -> MetaDataListingFilterMetaResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingFilterMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(key, forKey: .key)
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

        public var similar: [String: Any]?

        public var variant: [String: Any]?

        public var detail: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case compare

            case similar

            case variant

            case detail
        }

        public init(compare: [String: Any]?, detail: [String: Any]?, similar: [String: Any]?, variant: [String: Any]?) {
            self.compare = compare

            self.similar = similar

            self.variant = variant

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
                similar = try container.decode([String: Any].self, forKey: .similar)

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
                detail = try container.decode([String: Any].self, forKey: .detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(compare, forKey: .compare)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(variant, forKey: .variant)

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
         Model: ProductSize
         Used By: Catalog
     */

    class ProductSize: Codable {
        public var max: Int

        public var min: Int

        public enum CodingKeys: String, CodingKey {
            case max

            case min
        }

        public init(max: Int, min: Int) {
            self.max = max

            self.min = min
        }

        public func duplicate() -> ProductSize {
            let dict = self.dictionary!
            let copy = ProductSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            max = try container.decode(Int.self, forKey: .max)

            min = try container.decode(Int.self, forKey: .min)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }

    /*
         Model: ConfigurationProductConfig
         Used By: Catalog
     */

    class ConfigurationProductConfig: Codable {
        public var key: String

        public var isActive: Bool

        public var title: String?

        public var priority: Int

        public var size: ProductSize?

        public var subtitle: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case title

            case priority

            case size

            case subtitle

            case logo
        }

        public init(isActive: Bool, key: String, logo: String?, priority: Int, size: ProductSize?, subtitle: String?, title: String?) {
            self.key = key

            self.isActive = isActive

            self.title = title

            self.priority = priority

            self.size = size

            self.subtitle = subtitle

            self.logo = logo
        }

        public func duplicate() -> ConfigurationProductConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                size = try container.decode(ProductSize.self, forKey: .size)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(logo, forKey: .logo)
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
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var key: String

        public var displayType: String

        public var isActive: Bool

        public var priority: Int

        public var size: ProductSize

        public var name: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case displayType = "display_type"

            case isActive = "is_active"

            case priority

            case size

            case name

            case logo
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String?, name: String, priority: Int, size: ProductSize) {
            self.key = key

            self.displayType = displayType

            self.isActive = isActive

            self.priority = priority

            self.size = size

            self.name = name

            self.logo = logo
        }

        public func duplicate() -> ConfigurationProductVariantConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductVariantConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            displayType = try container.decode(String.self, forKey: .displayType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            size = try container.decode(ProductSize.self, forKey: .size)

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
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
         Model: ConfigurationProduct
         Used By: Catalog
     */

    class ConfigurationProduct: Codable {
        public var similar: ConfigurationProductSimilar

        public var variant: ConfigurationProductVariant

        public enum CodingKeys: String, CodingKey {
            case similar

            case variant
        }

        public init(similar: ConfigurationProductSimilar, variant: ConfigurationProductVariant) {
            self.similar = similar

            self.variant = variant
        }

        public func duplicate() -> ConfigurationProduct {
            let dict = self.dictionary!
            let copy = ConfigurationProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            similar = try container.decode(ConfigurationProductSimilar.self, forKey: .similar)

            variant = try container.decode(ConfigurationProductVariant.self, forKey: .variant)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(variant, forKey: .variant)
        }
    }

    /*
         Model: ConfigurationListingSortConfig
         Used By: Catalog
     */

    class ConfigurationListingSortConfig: Codable {
        public var key: String

        public var isActive: Bool

        public var priority: Int

        public var name: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case priority

            case name

            case logo
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int) {
            self.key = key

            self.isActive = isActive

            self.priority = priority

            self.name = name

            self.logo = logo
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

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: ConfigurationListingSort
         Used By: Catalog
     */

    class ConfigurationListingSort: Codable {
        public var config: [ConfigurationListingSortConfig]?

        public var defaultKey: String

        public enum CodingKeys: String, CodingKey {
            case config

            case defaultKey = "default_key"
        }

        public init(config: [ConfigurationListingSortConfig]?, defaultKey: String) {
            self.config = config

            self.defaultKey = defaultKey
        }

        public func duplicate() -> ConfigurationListingSort {
            let dict = self.dictionary!
            let copy = ConfigurationListingSort(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode([ConfigurationListingSortConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            defaultKey = try container.decode(String.self, forKey: .defaultKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
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
        public var sort: String?

        public var value: String?

        public var condition: String?

        public var map: [String: Any]?

        public var bucketPoints: [ConfigurationBucketPoints]?

        public enum CodingKeys: String, CodingKey {
            case sort

            case value

            case condition

            case map

            case bucketPoints = "bucket_points"
        }

        public init(bucketPoints: [ConfigurationBucketPoints]?, condition: String?, map: [String: Any]?, sort: String?, value: String?) {
            self.sort = sort

            self.value = value

            self.condition = condition

            self.map = map

            self.bucketPoints = bucketPoints
        }

        public func duplicate() -> ConfigurationListingFilterValue {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sort = try container.decode(String.self, forKey: .sort)

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

            do {
                map = try container.decode([String: Any].self, forKey: .map)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bucketPoints = try container.decode([ConfigurationBucketPoints].self, forKey: .bucketPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(map, forKey: .map)

            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)
        }
    }

    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var valueConfig: ConfigurationListingFilterValue?

        public var key: String

        public var isActive: Bool

        public var type: String

        public var priority: Int

        public var name: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case valueConfig = "value_config"

            case key

            case isActive = "is_active"

            case type

            case priority

            case name

            case logo
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue?) {
            self.valueConfig = valueConfig

            self.key = key

            self.isActive = isActive

            self.type = type

            self.priority = priority

            self.name = name

            self.logo = logo
        }

        public func duplicate() -> ConfigurationListingFilterConfig {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            type = try container.decode(String.self, forKey: .type)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: ConfigurationListingFilter
         Used By: Catalog
     */

    class ConfigurationListingFilter: Codable {
        public var attributeConfig: [ConfigurationListingFilterConfig]?

        public var allowSingle: Bool

        public enum CodingKeys: String, CodingKey {
            case attributeConfig = "attribute_config"

            case allowSingle = "allow_single"
        }

        public init(allowSingle: Bool, attributeConfig: [ConfigurationListingFilterConfig]?) {
            self.attributeConfig = attributeConfig

            self.allowSingle = allowSingle
        }

        public func duplicate() -> ConfigurationListingFilter {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributeConfig = try container.decode([ConfigurationListingFilterConfig].self, forKey: .attributeConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allowSingle = try container.decode(Bool.self, forKey: .allowSingle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeConfig, forKey: .attributeConfig)

            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)
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
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var configType: String

        public var product: ConfigurationProduct?

        public var configId: String?

        public var appId: String

        public var listing: ConfigurationListing?

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case product

            case configId = "config_id"

            case appId = "app_id"

            case listing
        }

        public init(appId: String, configId: String?, configType: String, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.configType = configType

            self.product = product

            self.configId = configId

            self.appId = appId

            self.listing = listing
        }

        public func duplicate() -> AppConfiguration {
            let dict = self.dictionary!
            let copy = AppConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(listing, forKey: .listing)
        }
    }

    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var configType: String

        public var id: String?

        public var product: ConfigurationProduct?

        public var configId: String?

        public var appId: String

        public var listing: ConfigurationListing?

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case id

            case product

            case configId = "config_id"

            case appId = "app_id"

            case listing
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.configType = configType

            self.id = id

            self.product = product

            self.configId = configId

            self.appId = appId

            self.listing = listing
        }

        public func duplicate() -> AppCatalogConfiguration {
            let dict = self.dictionary!
            let copy = AppCatalogConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(listing, forKey: .listing)
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
        public var configType: String

        public var id: String?

        public var product: GetCatalogConfigurationDetailsProduct?

        public var configId: String?

        public var appId: String

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case id

            case product

            case configId = "config_id"

            case appId = "app_id"

            case listing
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: GetCatalogConfigurationDetailsSchemaListing?, product: GetCatalogConfigurationDetailsProduct?) {
            self.configType = configType

            self.id = id

            self.product = product

            self.configId = configId

            self.appId = appId

            self.listing = listing
        }

        public func duplicate() -> EntityConfiguration {
            let dict = self.dictionary!
            let copy = EntityConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                id = try container.decode(String.self, forKey: .id)

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

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(listing, forKey: .listing)
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
         Model: ProductSortOn
         Used By: Catalog
     */

    class ProductSortOn: Codable {
        public var value: String?

        public var name: String?

        public var isSelected: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case name

            case isSelected = "is_selected"
        }

        public init(isSelected: Bool?, name: String?, value: String?) {
            self.value = value

            self.name = name

            self.isSelected = isSelected
        }

        public func duplicate() -> ProductSortOn {
            let dict = self.dictionary!
            let copy = ProductSortOn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

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
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        }
    }

    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */

    class ProductFiltersValue: Codable {
        public var currencySymbol: String?

        public var selectedMax: Int?

        public var selectedMin: Int?

        public var isSelected: Bool

        public var value: String

        public var count: Int?

        public var min: Int?

        public var currencyCode: String?

        public var display: String

        public var queryFormat: String?

        public var displayFormat: String?

        public var max: Int?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case selectedMax = "selected_max"

            case selectedMin = "selected_min"

            case isSelected = "is_selected"

            case value

            case count

            case min

            case currencyCode = "currency_code"

            case display

            case queryFormat = "query_format"

            case displayFormat = "display_format"

            case max
        }

        public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String) {
            self.currencySymbol = currencySymbol

            self.selectedMax = selectedMax

            self.selectedMin = selectedMin

            self.isSelected = isSelected

            self.value = value

            self.count = count

            self.min = min

            self.currencyCode = currencyCode

            self.display = display

            self.queryFormat = queryFormat

            self.displayFormat = displayFormat

            self.max = max
        }

        public func duplicate() -> ProductFiltersValue {
            let dict = self.dictionary!
            let copy = ProductFiltersValue(dictionary: dict)!
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
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

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

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            value = try container.decode(String.self, forKey: .value)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Int.self, forKey: .min)

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

            display = try container.decode(String.self, forKey: .display)

            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)

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

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */

    class ProductFiltersKey: Codable {
        public var kind: String?

        public var name: String

        public var logo: String?

        public var display: String

        public enum CodingKeys: String, CodingKey {
            case kind

            case name

            case logo

            case display
        }

        public init(display: String, kind: String?, logo: String?, name: String) {
            self.kind = kind

            self.name = name

            self.logo = logo

            self.display = display
        }

        public func duplicate() -> ProductFiltersKey {
            let dict = self.dictionary!
            let copy = ProductFiltersKey(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: ProductFilters
         Used By: Catalog
     */

    class ProductFilters: Codable {
        public var values: [ProductFiltersValue]

        public var key: ProductFiltersKey

        public enum CodingKeys: String, CodingKey {
            case values

            case key
        }

        public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
            self.values = values

            self.key = key
        }

        public func duplicate() -> ProductFilters {
            let dict = self.dictionary!
            let copy = ProductFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            values = try container.decode([ProductFiltersValue].self, forKey: .values)

            key = try container.decode(ProductFiltersKey.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: GetCollectionQueryOptionResponse
         Used By: Catalog
     */

    class GetCollectionQueryOptionResponse: Codable {
        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]?, sortOn: [ProductSortOn]?) {
            self.sortOn = sortOn

            self.filters = filters
        }

        public func duplicate() -> GetCollectionQueryOptionResponse {
            let dict = self.dictionary!
            let copy = GetCollectionQueryOptionResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
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
         Model: UserInfo
         Used By: Catalog
     */

    class UserInfo: Codable {
        public var email: String?

        public var uid: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case uid

            case userId = "user_id"

            case username
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.email = email

            self.uid = uid

            self.userId = userId

            self.username = username
        }

        public func duplicate() -> UserInfo {
            let dict = self.dictionary!
            let copy = UserInfo(dictionary: dict)!
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
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
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
        public var start: String?

        public var duration: Int?

        public var end: String?

        public var cron: String?

        public enum CodingKeys: String, CodingKey {
            case start

            case duration

            case end

            case cron
        }

        public init(cron: String?, duration: Int?, end: String?, start: String?) {
            self.start = start

            self.duration = duration

            self.end = end

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
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(duration, forKey: .duration)

            try? container.encode(end, forKey: .end)

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
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var allowSort: Bool?

        public var type: String

        public var banners: CollectionBanner

        public var customJson: [String: Any]?

        public var createdBy: UserInfo?

        public var sortOn: String?

        public var query: [String: Any]?

        public var localeLanguage: [String: Any]?

        public var description: String?

        public var badge: CollectionBadge?

        public var published: Bool?

        public var logo: CollectionImage

        public var tags: [String]?

        public var appId: String

        public var visibleFacetsKeys: [String]?

        public var schedule: Schedule?

        public var allowFacets: Bool?

        public var modifiedBy: UserInfo?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var isVisible: Bool?

        public var name: String

        public var seo: SeoDetail?

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case allowSort = "allow_sort"

            case type

            case banners

            case customJson = "_custom_json"

            case createdBy = "created_by"

            case sortOn = "sort_on"

            case query

            case localeLanguage = "_locale_language"

            case description

            case badge

            case published

            case logo

            case tags

            case appId = "app_id"

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case allowFacets = "allow_facets"

            case modifiedBy = "modified_by"

            case meta

            case isActive = "is_active"

            case isVisible = "is_visible"

            case name

            case seo

            case slug
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String, badge: CollectionBadge?, banners: CollectionBanner, createdBy: UserInfo?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage, meta: [String: Any]?, modifiedBy: UserInfo?, name: String, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String, sortOn: String?, tags: [String]?, type: String, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.allowSort = allowSort

            self.type = type

            self.banners = banners

            self.customJson = customJson

            self.createdBy = createdBy

            self.sortOn = sortOn

            self.query = query

            self.localeLanguage = localeLanguage

            self.description = description

            self.badge = badge

            self.published = published

            self.logo = logo

            self.tags = tags

            self.appId = appId

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.allowFacets = allowFacets

            self.modifiedBy = modifiedBy

            self.meta = meta

            self.isActive = isActive

            self.isVisible = isVisible

            self.name = name

            self.seo = seo

            self.slug = slug
        }

        public func duplicate() -> CreateCollection {
            let dict = self.dictionary!
            let copy = CreateCollection(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

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

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(slug, forKey: .slug)
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
        public var tag: [String]?

        public var cron: [String: Any]?

        public var query: [String: Any]?

        public var meta: [String: Any]?

        public var appId: String?

        public var visibleFacetsKeys: [String]?

        public var schedule: [String: Any]?

        public var isActive: Bool?

        public var allowSort: Bool?

        public var type: String?

        public var banners: ImageUrls?

        public var allowFacets: Bool?

        public var description: String?

        public var name: String?

        public var badge: [String: Any]?

        public var slug: String?

        public var logo: BannerImage?

        public enum CodingKeys: String, CodingKey {
            case tag

            case cron

            case query

            case meta

            case appId = "app_id"

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case isActive = "is_active"

            case allowSort = "allow_sort"

            case type

            case banners

            case allowFacets = "allow_facets"

            case description

            case name

            case badge

            case slug

            case logo
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: BannerImage?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.tag = tag

            self.cron = cron

            self.query = query

            self.meta = meta

            self.appId = appId

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.isActive = isActive

            self.allowSort = allowSort

            self.type = type

            self.banners = banners

            self.allowFacets = allowFacets

            self.description = description

            self.name = name

            self.badge = badge

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> CollectionCreateResponse {
            let dict = self.dictionary!
            let copy = CollectionCreateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                appId = try container.decode(String.self, forKey: .appId)

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
                schedule = try container.decode([String: Any].self, forKey: .schedule)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                description = try container.decode(String.self, forKey: .description)

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
                badge = try container.decode([String: Any].self, forKey: .badge)

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
                logo = try container.decode(BannerImage.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var meta: [String: Any]?

        public var type: String?

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case type

            case url
        }

        public init(meta: [String: Any]?, type: String?, url: String) {
            self.meta = meta

            self.type = type

            self.url = url
        }

        public func duplicate() -> Media1 {
            let dict = self.dictionary!
            let copy = Media1(dictionary: dict)!
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */

    class GetCollectionDetailNest: Codable {
        public var tag: [String]?

        public var cron: [String: Any]?

        public var allowSort: Bool?

        public var type: String?

        public var banners: ImageUrls?

        public var action: Action?

        public var uid: String?

        public var query: [String: Any]?

        public var description: String?

        public var badge: [String: Any]?

        public var logo: Media1?

        public var appId: String?

        public var visibleFacetsKeys: [String]?

        public var schedule: [String: Any]?

        public var allowFacets: Bool?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var name: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case tag

            case cron

            case allowSort = "allow_sort"

            case type

            case banners

            case action

            case uid

            case query

            case description

            case badge

            case logo

            case appId = "app_id"

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case allowFacets = "allow_facets"

            case meta

            case isActive = "is_active"

            case name

            case slug
        }

        public init(action: Action?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.tag = tag

            self.cron = cron

            self.allowSort = allowSort

            self.type = type

            self.banners = banners

            self.action = action

            self.uid = uid

            self.query = query

            self.description = description

            self.badge = badge

            self.logo = logo

            self.appId = appId

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.allowFacets = allowFacets

            self.meta = meta

            self.isActive = isActive

            self.name = name

            self.slug = slug
        }

        public func duplicate() -> GetCollectionDetailNest {
            let dict = self.dictionary!
            let copy = GetCollectionDetailNest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                description = try container.decode(String.self, forKey: .description)

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
                logo = try container.decode(Media1.self, forKey: .logo)

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
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

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
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: CollectionListingFilterType
         Used By: Catalog
     */

    class CollectionListingFilterType: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case display
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.name = name

            self.isSelected = isSelected

            self.display = display
        }

        public func duplicate() -> CollectionListingFilterType {
            let dict = self.dictionary!
            let copy = CollectionListingFilterType(dictionary: dict)!
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
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: CollectionListingFilterTag
         Used By: Catalog
     */

    class CollectionListingFilterTag: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case display
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.name = name

            self.isSelected = isSelected

            self.display = display
        }

        public func duplicate() -> CollectionListingFilterTag {
            let dict = self.dictionary!
            let copy = CollectionListingFilterTag(dictionary: dict)!
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
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: CollectionListingFilter
         Used By: Catalog
     */

    class CollectionListingFilter: Codable {
        public var type: [CollectionListingFilterType]?

        public var tags: [CollectionListingFilterTag]?

        public enum CodingKeys: String, CodingKey {
            case type

            case tags
        }

        public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
            self.type = type

            self.tags = tags
        }

        public func duplicate() -> CollectionListingFilter {
            let dict = self.dictionary!
            let copy = CollectionListingFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode([CollectionListingFilterType].self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: GetCollectionListingResponse
         Used By: Catalog
     */

    class GetCollectionListingResponse: Codable {
        public var items: [GetCollectionDetailNest]?

        public var filters: CollectionListingFilter?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case filters

            case page
        }

        public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page?) {
            self.items = items

            self.filters = filters

            self.page = page
        }

        public func duplicate() -> GetCollectionListingResponse {
            let dict = self.dictionary!
            let copy = GetCollectionListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetCollectionDetailNest].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CollectionDetailResponse
         Used By: Catalog
     */

    class CollectionDetailResponse: Codable {
        public var tag: [String]?

        public var cron: [String: Any]?

        public var query: [String: Any]?

        public var meta: [String: Any]?

        public var appId: String?

        public var visibleFacetsKeys: [String]?

        public var schedule: [String: Any]?

        public var isActive: Bool?

        public var allowSort: Bool?

        public var type: String?

        public var banners: ImageUrls?

        public var allowFacets: Bool?

        public var description: String?

        public var name: String?

        public var badge: [String: Any]?

        public var slug: String?

        public var logo: Media1?

        public enum CodingKeys: String, CodingKey {
            case tag

            case cron

            case query

            case meta

            case appId = "app_id"

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case isActive = "is_active"

            case allowSort = "allow_sort"

            case type

            case banners

            case allowFacets = "allow_facets"

            case description

            case name

            case badge

            case slug

            case logo
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.tag = tag

            self.cron = cron

            self.query = query

            self.meta = meta

            self.appId = appId

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.isActive = isActive

            self.allowSort = allowSort

            self.type = type

            self.banners = banners

            self.allowFacets = allowFacets

            self.description = description

            self.name = name

            self.badge = badge

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> CollectionDetailResponse {
            let dict = self.dictionary!
            let copy = CollectionDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                appId = try container.decode(String.self, forKey: .appId)

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
                schedule = try container.decode([String: Any].self, forKey: .schedule)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                description = try container.decode(String.self, forKey: .description)

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
                badge = try container.decode([String: Any].self, forKey: .badge)

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
                logo = try container.decode(Media1.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: UpdateCollection
         Used By: Catalog
     */

    class UpdateCollection: Codable {
        public var allowSort: Bool?

        public var banners: CollectionBanner?

        public var customJson: [String: Any]?

        public var query: [String: Any]?

        public var sortOn: String?

        public var localeLanguage: [String: Any]?

        public var description: String?

        public var badge: CollectionBadge?

        public var published: Bool?

        public var logo: CollectionImage?

        public var tags: [String]?

        public var visibleFacetsKeys: [String]?

        public var schedule: Schedule?

        public var allowFacets: Bool?

        public var modifiedBy: UserInfo?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var isVisible: Bool?

        public var name: String?

        public var seo: SeoDetail?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case allowSort = "allow_sort"

            case banners

            case customJson = "_custom_json"

            case query

            case sortOn = "sort_on"

            case localeLanguage = "_locale_language"

            case description

            case badge

            case published

            case logo

            case tags

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case allowFacets = "allow_facets"

            case modifiedBy = "modified_by"

            case meta

            case isActive = "is_active"

            case isVisible = "is_visible"

            case name

            case seo

            case slug
        }

        public init(allowFacets: Bool?, allowSort: Bool?, badge: CollectionBadge?, banners: CollectionBanner?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage?, meta: [String: Any]?, modifiedBy: UserInfo?, name: String?, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String?, sortOn: String?, tags: [String]?, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.allowSort = allowSort

            self.banners = banners

            self.customJson = customJson

            self.query = query

            self.sortOn = sortOn

            self.localeLanguage = localeLanguage

            self.description = description

            self.badge = badge

            self.published = published

            self.logo = logo

            self.tags = tags

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.allowFacets = allowFacets

            self.modifiedBy = modifiedBy

            self.meta = meta

            self.isActive = isActive

            self.isVisible = isVisible

            self.name = name

            self.seo = seo

            self.slug = slug
        }

        public func duplicate() -> UpdateCollection {
            let dict = self.dictionary!
            let copy = UpdateCollection(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                description = try container.decode(String.self, forKey: .description)

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
                published = try container.decode(Bool.self, forKey: .published)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

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
                seo = try container.decode(SeoDetail.self, forKey: .seo)

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

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(slug, forKey: .slug)
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
         Model: ProductDetailAttribute
         Used By: Catalog
     */

    class ProductDetailAttribute: Codable {
        public var value: String?

        public var type: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case type

            case key
        }

        public init(key: String?, type: String?, value: String?) {
            self.value = value

            self.type = type

            self.key = key
        }

        public func duplicate() -> ProductDetailAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailAttribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(key, forKey: .key)
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
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var max: Double?

        public var currencyCode: String?

        public var currencySymbol: String?

        public var min: Double?

        public enum CodingKeys: String, CodingKey {
            case max

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case min
        }

        public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
            self.max = max

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.min = min
        }

        public func duplicate() -> Price1 {
            let dict = self.dictionary!
            let copy = Price1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(min, forKey: .min)
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
        public var name: String?

        public var action: Action?

        public var uid: Int?

        public var logo: Media1?

        public enum CodingKeys: String, CodingKey {
            case name

            case action

            case uid

            case logo
        }

        public init(action: Action?, logo: Media1?, name: String?, uid: Int?) {
            self.name = name

            self.action = action

            self.uid = uid

            self.logo = logo
        }

        public func duplicate() -> ProductBrand {
            let dict = self.dictionary!
            let copy = ProductBrand(dictionary: dict)!
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
                logo = try container.decode(Media1.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: ProductListingDetail
         Used By: Catalog
     */

    class ProductListingDetail: Codable {
        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var itemCode: String?

        public var productOnlineDate: String?

        public var type: String?

        public var attributes: [String: Any]?

        public var uid: Int?

        public var teaserTag: [String: Any]?

        public var itemType: String?

        public var imageNature: String?

        public var rating: Double?

        public var similars: [String]?

        public var description: String?

        public var color: String?

        public var ratingCount: Int?

        public var highlights: [String]?

        public var promoMeta: [String: Any]?

        public var price: ProductListingPrice?

        public var medias: [Media1]?

        public var hasVariant: Bool?

        public var shortDescription: String?

        public var sellable: Bool?

        public var discount: String?

        public var tryouts: [String]?

        public var name: String?

        public var slug: String

        public var brand: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case groupedAttributes = "grouped_attributes"

            case itemCode = "item_code"

            case productOnlineDate = "product_online_date"

            case type

            case attributes

            case uid

            case teaserTag = "teaser_tag"

            case itemType = "item_type"

            case imageNature = "image_nature"

            case rating

            case similars

            case description

            case color

            case ratingCount = "rating_count"

            case highlights

            case promoMeta = "promo_meta"

            case price

            case medias

            case hasVariant = "has_variant"

            case shortDescription = "short_description"

            case sellable

            case discount

            case tryouts

            case name

            case slug

            case brand
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.groupedAttributes = groupedAttributes

            self.itemCode = itemCode

            self.productOnlineDate = productOnlineDate

            self.type = type

            self.attributes = attributes

            self.uid = uid

            self.teaserTag = teaserTag

            self.itemType = itemType

            self.imageNature = imageNature

            self.rating = rating

            self.similars = similars

            self.description = description

            self.color = color

            self.ratingCount = ratingCount

            self.highlights = highlights

            self.promoMeta = promoMeta

            self.price = price

            self.medias = medias

            self.hasVariant = hasVariant

            self.shortDescription = shortDescription

            self.sellable = sellable

            self.discount = discount

            self.tryouts = tryouts

            self.name = name

            self.slug = slug

            self.brand = brand
        }

        public func duplicate() -> ProductListingDetail {
            let dict = self.dictionary!
            let copy = ProductListingDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                description = try container.decode(String.self, forKey: .description)

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
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

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
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

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
                medias = try container.decode([Media1].self, forKey: .medias)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                discount = try container.decode(String.self, forKey: .discount)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: GetCollectionItemsResponse
         Used By: Catalog
     */

    class GetCollectionItemsResponse: Codable {
        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case sortOn = "sort_on"

            case filters

            case page
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?) {
            self.items = items

            self.sortOn = sortOn

            self.filters = filters

            self.page = page
        }

        public func duplicate() -> GetCollectionItemsResponse {
            let dict = self.dictionary!
            let copy = GetCollectionItemsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CatalogInsightBrand
         Used By: Catalog
     */

    class CatalogInsightBrand: Codable {
        public var availableArticles: Int?

        public var availableSizes: Int?

        public var articleFreshness: Int?

        public var totalSizes: Int?

        public var totalArticles: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case availableArticles = "available_articles"

            case availableSizes = "available_sizes"

            case articleFreshness = "article_freshness"

            case totalSizes = "total_sizes"

            case totalArticles = "total_articles"

            case name
        }

        public init(articleFreshness: Int?, availableArticles: Int?, availableSizes: Int?, name: String?, totalArticles: Int?, totalSizes: Int?) {
            self.availableArticles = availableArticles

            self.availableSizes = availableSizes

            self.articleFreshness = articleFreshness

            self.totalSizes = totalSizes

            self.totalArticles = totalArticles

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
                availableArticles = try container.decode(Int.self, forKey: .availableArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableSizes = try container.decode(Int.self, forKey: .availableSizes)

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
                totalSizes = try container.decode(Int.self, forKey: .totalSizes)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableArticles, forKey: .availableArticles)

            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)

            try? container.encodeIfPresent(articleFreshness, forKey: .articleFreshness)

            try? container.encodeIfPresent(totalSizes, forKey: .totalSizes)

            try? container.encodeIfPresent(totalArticles, forKey: .totalArticles)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CatalogInsightItem
         Used By: Catalog
     */

    class CatalogInsightItem: Codable {
        public var sellableCount: Int?

        public var count: Int?

        public var outOfStockCount: Int?

        public enum CodingKeys: String, CodingKey {
            case sellableCount = "sellable_count"

            case count

            case outOfStockCount = "out_of_stock_count"
        }

        public init(count: Int?, outOfStockCount: Int?, sellableCount: Int?) {
            self.sellableCount = sellableCount

            self.count = count

            self.outOfStockCount = outOfStockCount
        }

        public func duplicate() -> CatalogInsightItem {
            let dict = self.dictionary!
            let copy = CatalogInsightItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellableCount = try container.decode(Int.self, forKey: .sellableCount)

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
                outOfStockCount = try container.decode(Int.self, forKey: .outOfStockCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellableCount, forKey: .sellableCount)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(outOfStockCount, forKey: .outOfStockCount)
        }
    }

    /*
         Model: CatalogInsightResponse
         Used By: Catalog
     */

    class CatalogInsightResponse: Codable {
        public var brandDistribution: CatalogInsightBrand?

        public var item: CatalogInsightItem?

        public enum CodingKeys: String, CodingKey {
            case brandDistribution = "brand_distribution"

            case item
        }

        public init(brandDistribution: CatalogInsightBrand?, item: CatalogInsightItem?) {
            self.brandDistribution = brandDistribution

            self.item = item
        }

        public func duplicate() -> CatalogInsightResponse {
            let dict = self.dictionary!
            let copy = CatalogInsightResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandDistribution = try container.decode(CatalogInsightBrand.self, forKey: .brandDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(CatalogInsightItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandDistribution, forKey: .brandDistribution)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }

    /*
         Model: CrossSellingData
         Used By: Catalog
     */

    class CrossSellingData: Codable {
        public var products: Int?

        public var articles: Int?

        public enum CodingKeys: String, CodingKey {
            case products

            case articles
        }

        public init(articles: Int?, products: Int?) {
            self.products = products

            self.articles = articles
        }

        public func duplicate() -> CrossSellingData {
            let dict = self.dictionary!
            let copy = CrossSellingData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                products = try container.decode(Int.self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articles = try container.decode(Int.self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(articles, forKey: .articles)
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
        public var companyId: Int

        public var createdBy: [String: Any]?

        public var enabled: Bool

        public var modifiedOn: Int

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var storeIds: [Int]

        public var brandIds: [Int]

        public var optLevel: String

        public var platform: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case enabled

            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case storeIds = "store_ids"

            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case platform
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]?, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]?, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.enabled = enabled

            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.storeIds = storeIds

            self.brandIds = brandIds

            self.optLevel = optLevel

            self.platform = platform
        }

        public func duplicate() -> CompanyOptIn {
            let dict = self.dictionary!
            let copy = CompanyOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            platform = try container.decode(String.self, forKey: .platform)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }

    /*
         Model: GetOptInPlatform
         Used By: Catalog
     */

    class GetOptInPlatform: Codable {
        public var items: [CompanyOptIn]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [CompanyOptIn], page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetOptInPlatform {
            let dict = self.dictionary!
            let copy = GetOptInPlatform(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([CompanyOptIn].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: OptinCompanyDetail
         Used By: Catalog
     */

    class OptinCompanyDetail: Codable {
        public var name: String?

        public var uid: Int?

        public var companyType: String?

        public var businessType: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case companyType = "company_type"

            case businessType = "business_type"
        }

        public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.companyType = companyType

            self.businessType = businessType
        }

        public func duplicate() -> OptinCompanyDetail {
            let dict = self.dictionary!
            let copy = OptinCompanyDetail(dictionary: dict)!
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
                uid = try container.decode(Int.self, forKey: .uid)

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

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(businessType, forKey: .businessType)
        }
    }

    /*
         Model: CompanyBrandDetail
         Used By: Catalog
     */

    class CompanyBrandDetail: Codable {
        public var companyId: Int?

        public var totalArticle: Int?

        public var brandId: Int?

        public var brandName: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case totalArticle = "total_article"

            case brandId = "brand_id"

            case brandName = "brand_name"
        }

        public init(brandId: Int?, brandName: String?, companyId: Int?, totalArticle: Int?) {
            self.companyId = companyId

            self.totalArticle = totalArticle

            self.brandId = brandId

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
                totalArticle = try container.decode(Int.self, forKey: .totalArticle)

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
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }

    /*
         Model: OptinCompanyBrandDetailsView
         Used By: Catalog
     */

    class OptinCompanyBrandDetailsView: Codable {
        public var items: [CompanyBrandDetail]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [CompanyBrandDetail]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> OptinCompanyBrandDetailsView {
            let dict = self.dictionary!
            let copy = OptinCompanyBrandDetailsView(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CompanyBrandDetail].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: OptinCompanyMetrics
         Used By: Catalog
     */

    class OptinCompanyMetrics: Codable {
        public var store: Int?

        public var company: String?

        public var brand: Int?

        public enum CodingKeys: String, CodingKey {
            case store

            case company

            case brand
        }

        public init(brand: Int?, company: String?, store: Int?) {
            self.store = store

            self.company = company

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
                store = try container.decode(Int.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(String.self, forKey: .company)

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

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var companyId: Int?

        public var additionalContacts: [[String: Any]]?

        public var modifiedOn: String?

        public var storeType: String?

        public var displayName: String?

        public var createdOn: String?

        public var timing: [String: Any]?

        public var documents: [[String: Any]]?

        public var storeCode: String?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case additionalContacts = "additional_contacts"

            case modifiedOn = "modified_on"

            case storeType = "store_type"

            case displayName = "display_name"

            case createdOn = "created_on"

            case timing

            case documents

            case storeCode = "store_code"

            case name

            case uid
        }

        public init(additionalContacts: [[String: Any]]?, companyId: Int?, createdOn: String?, displayName: String?, documents: [[String: Any]]?, modifiedOn: String?, name: String?, storeCode: String?, storeType: String?, timing: [String: Any]?, uid: Int?) {
            self.companyId = companyId

            self.additionalContacts = additionalContacts

            self.modifiedOn = modifiedOn

            self.storeType = storeType

            self.displayName = displayName

            self.createdOn = createdOn

            self.timing = timing

            self.documents = documents

            self.storeCode = storeCode

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> StoreDetail {
            let dict = self.dictionary!
            let copy = StoreDetail(dictionary: dict)!
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
                additionalContacts = try container.decode([[String: Any]].self, forKey: .additionalContacts)

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
                storeType = try container.decode(String.self, forKey: .storeType)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                documents = try container.decode([[String: Any]].self, forKey: .documents)

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

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: OptinStoreDetails
         Used By: Catalog
     */

    class OptinStoreDetails: Codable {
        public var items: [StoreDetail]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [StoreDetail]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> OptinStoreDetails {
            let dict = self.dictionary!
            let copy = OptinStoreDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([StoreDetail].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
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
         Model: AttributeSchemaRange
         Used By: Catalog
     */

    class AttributeSchemaRange: Codable {
        public var max: Int?

        public var min: Int?

        public enum CodingKeys: String, CodingKey {
            case max

            case min
        }

        public init(max: Int?, min: Int?) {
            self.max = max

            self.min = min
        }

        public func duplicate() -> AttributeSchemaRange {
            let dict = self.dictionary!
            let copy = AttributeSchemaRange(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }

    /*
         Model: AttributeMaster
         Used By: Catalog
     */

    class AttributeMaster: Codable {
        public var range: AttributeSchemaRange?

        public var mandatory: Bool?

        public var type: String

        public var multi: Bool?

        public var allowedValues: [String]?

        public var format: String?

        public enum CodingKeys: String, CodingKey {
            case range

            case mandatory

            case type

            case multi

            case allowedValues = "allowed_values"

            case format
        }

        public init(allowedValues: [String]?, format: String?, mandatory: Bool?, multi: Bool?, range: AttributeSchemaRange?, type: String) {
            self.range = range

            self.mandatory = mandatory

            self.type = type

            self.multi = multi

            self.allowedValues = allowedValues

            self.format = format
        }

        public func duplicate() -> AttributeMaster {
            let dict = self.dictionary!
            let copy = AttributeMaster(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                range = try container.decode(AttributeSchemaRange.self, forKey: .range)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                multi = try container.decode(Bool.self, forKey: .multi)

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

            do {
                format = try container.decode(String.self, forKey: .format)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(range, forKey: .range)

            try? container.encodeIfPresent(mandatory, forKey: .mandatory)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(multi, forKey: .multi)

            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)

            try? container.encodeIfPresent(format, forKey: .format)
        }
    }

    /*
         Model: AttributeMasterFilter
         Used By: Catalog
     */

    class AttributeMasterFilter: Codable {
        public var priority: Int?

        public var indexing: Bool

        public var dependsOn: [String]?

        public enum CodingKeys: String, CodingKey {
            case priority

            case indexing

            case dependsOn = "depends_on"
        }

        public init(dependsOn: [String]?, indexing: Bool, priority: Int?) {
            self.priority = priority

            self.indexing = indexing

            self.dependsOn = dependsOn
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

            indexing = try container.decode(Bool.self, forKey: .indexing)

            do {
                dependsOn = try container.decode([String].self, forKey: .dependsOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(indexing, forKey: .indexing)

            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)
        }
    }

    /*
         Model: GenderDetail
         Used By: Catalog
     */

    class GenderDetail: Codable {
        public var id: String?

        public var departments: [String]?

        public var meta: AttributeMasterMeta?

        public var details: AttributeMasterDetails?

        public var schema: AttributeMaster?

        public var isNested: Bool?

        public var enabledForEndConsumer: Bool?

        public var description: String?

        public var name: String?

        public var slug: String?

        public var filters: AttributeMasterFilter?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case departments

            case meta

            case details

            case schema

            case isNested = "is_nested"

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case description

            case name

            case slug

            case filters

            case logo
        }

        public init(departments: [String]?, description: String?, details: AttributeMasterDetails?, enabledForEndConsumer: Bool?, filters: AttributeMasterFilter?, id: String?, isNested: Bool?, logo: String?, meta: AttributeMasterMeta?, name: String?, schema: AttributeMaster?, slug: String?) {
            self.id = id

            self.departments = departments

            self.meta = meta

            self.details = details

            self.schema = schema

            self.isNested = isNested

            self.enabledForEndConsumer = enabledForEndConsumer

            self.description = description

            self.name = name

            self.slug = slug

            self.filters = filters

            self.logo = logo
        }

        public func duplicate() -> GenderDetail {
            let dict = self.dictionary!
            let copy = GenderDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                meta = try container.decode(AttributeMasterMeta.self, forKey: .meta)

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
                schema = try container.decode(AttributeMaster.self, forKey: .schema)

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
                enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)

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
                name = try container.decode(String.self, forKey: .name)

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
                filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: ProdcutTemplateCategoriesResponse
         Used By: Catalog
     */

    class ProdcutTemplateCategoriesResponse: Codable {
        public var items: [[String: Any]]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [[String: Any]]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ProdcutTemplateCategoriesResponse {
            let dict = self.dictionary!
            let copy = ProdcutTemplateCategoriesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: PTErrorResponse
         Used By: Catalog
     */

    class PTErrorResponse: Codable {
        public var errors: [String: Any]?

        public var status: Int?

        public var meta: [String: Any]?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case errors

            case status

            case meta

            case message

            case code
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.errors = errors

            self.status = status

            self.meta = meta

            self.message = message

            self.code = code
        }

        public func duplicate() -> PTErrorResponse {
            let dict = self.dictionary!
            let copy = PTErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: UserSerializer
         Used By: Catalog
     */

    class UserSerializer: Codable {
        public var userId: String?

        public var contact: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case contact

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.contact = contact

            self.username = username
        }

        public func duplicate() -> UserSerializer {
            let dict = self.dictionary!
            let copy = UserSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: GetDepartment
         Used By: Catalog
     */

    class GetDepartment: Codable {
        public var createdBy: UserSerializer?

        public var modifiedOn: String?

        public var priorityOrder: Int?

        public var synonyms: [String]?

        public var modifiedBy: UserSerializer?

        public var itemType: String?

        public var createdOn: String?

        public var isActive: Bool?

        public var pageNo: Int?

        public var search: String?

        public var pageSize: Int?

        public var name: String?

        public var uid: Int?

        public var slug: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case priorityOrder = "priority_order"

            case synonyms

            case modifiedBy = "modified_by"

            case itemType = "item_type"

            case createdOn = "created_on"

            case isActive = "is_active"

            case pageNo = "page_no"

            case search

            case pageSize = "page_size"

            case name

            case uid

            case slug

            case logo
        }

        public init(createdBy: UserSerializer?, createdOn: String?, isActive: Bool?, itemType: String?, logo: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, pageNo: Int?, pageSize: Int?, priorityOrder: Int?, search: String?, slug: String?, synonyms: [String]?, uid: Int?) {
            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.priorityOrder = priorityOrder

            self.synonyms = synonyms

            self.modifiedBy = modifiedBy

            self.itemType = itemType

            self.createdOn = createdOn

            self.isActive = isActive

            self.pageNo = pageNo

            self.search = search

            self.pageSize = pageSize

            self.name = name

            self.uid = uid

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> GetDepartment {
            let dict = self.dictionary!
            let copy = GetDepartment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                pageSize = try container.decode(Int.self, forKey: .pageSize)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: DepartmentsResponse
         Used By: Catalog
     */

    class DepartmentsResponse: Codable {
        public var items: [GetDepartment]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [GetDepartment]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> DepartmentsResponse {
            let dict = self.dictionary!
            let copy = DepartmentsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetDepartment].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: DepartmentErrorResponse
         Used By: Catalog
     */

    class DepartmentErrorResponse: Codable {
        public var errors: [String: Any]?

        public var status: Int?

        public var meta: [String: Any]?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case errors

            case status

            case meta

            case message

            case code
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.errors = errors

            self.status = status

            self.meta = meta

            self.message = message

            self.code = code
        }

        public func duplicate() -> DepartmentErrorResponse {
            let dict = self.dictionary!
            let copy = DepartmentErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var createdBy: [String: Any]?

        public var tag: String?

        public var modifiedOn: String?

        public var departments: [String]?

        public var modifiedBy: [String: Any]?

        public var categories: [String]?

        public var createdOn: String?

        public var isExpirable: Bool

        public var isActive: Bool?

        public var isArchived: Bool?

        public var attributes: [String]?

        public var isPhysical: Bool

        public var description: String?

        public var name: String?

        public var slug: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case tag

            case modifiedOn = "modified_on"

            case departments

            case modifiedBy = "modified_by"

            case categories

            case createdOn = "created_on"

            case isExpirable = "is_expirable"

            case isActive = "is_active"

            case isArchived = "is_archived"

            case attributes

            case isPhysical = "is_physical"

            case description

            case name

            case slug

            case logo
        }

        public init(attributes: [String]?, categories: [String]?, createdBy: [String: Any]?, createdOn: String?, departments: [String]?, description: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, slug: String, tag: String?) {
            self.createdBy = createdBy

            self.tag = tag

            self.modifiedOn = modifiedOn

            self.departments = departments

            self.modifiedBy = modifiedBy

            self.categories = categories

            self.createdOn = createdOn

            self.isExpirable = isExpirable

            self.isActive = isActive

            self.isArchived = isArchived

            self.attributes = attributes

            self.isPhysical = isPhysical

            self.description = description

            self.name = name

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> ProductTemplate {
            let dict = self.dictionary!
            let copy = ProductTemplate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: TemplatesResponse
         Used By: Catalog
     */

    class TemplatesResponse: Codable {
        public var items: ProductTemplate?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: ProductTemplate?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> TemplatesResponse {
            let dict = self.dictionary!
            let copy = TemplatesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(ProductTemplate.self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Properties
         Used By: Catalog
     */

    class Properties: Codable {
        public var multiSize: [String: Any]?

        public var sizes: [String: Any]?

        public var moq: [String: Any]?

        public var itemCode: [String: Any]?

        public var isDependent: [String: Any]?

        public var brandUid: [String: Any]?

        public var sizeGuide: [String: Any]?

        public var command: [String: Any]?

        public var currency: [String: Any]?

        public var teaserTag: [String: Any]?

        public var productPublish: [String: Any]?

        public var variants: [String: Any]?

        public var itemType: [String: Any]?

        public var media: [String: Any]?

        public var trader: [String: Any]?

        public var description: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var tags: [String: Any]?

        public var hsnCode: [String: Any]?

        public var returnConfig: [String: Any]?

        public var traderType: [String: Any]?

        public var noOfBoxes: [String: Any]?

        public var highlights: [String: Any]?

        public var customOrder: [String: Any]?

        public var categorySlug: [String: Any]?

        public var shortDescription: [String: Any]?

        public var isActive: [String: Any]?

        public var productGroupTag: [String: Any]?

        public var name: [String: Any]?

        public var slug: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case multiSize = "multi_size"

            case sizes

            case moq

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case sizeGuide = "size_guide"

            case command

            case currency

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case variants

            case itemType = "item_type"

            case media

            case trader

            case description

            case countryOfOrigin = "country_of_origin"

            case tags

            case hsnCode = "hsn_code"

            case returnConfig = "return_config"

            case traderType = "trader_type"

            case noOfBoxes = "no_of_boxes"

            case highlights

            case customOrder = "custom_order"

            case categorySlug = "category_slug"

            case shortDescription = "short_description"

            case isActive = "is_active"

            case productGroupTag = "product_group_tag"

            case name

            case slug
        }

        public init(brandUid: [String: Any]?, categorySlug: [String: Any]?, command: [String: Any]?, countryOfOrigin: [String: Any]?, currency: [String: Any]?, customOrder: [String: Any]?, description: [String: Any]?, highlights: [String: Any]?, hsnCode: [String: Any]?, isActive: [String: Any]?, isDependent: [String: Any]?, itemCode: [String: Any]?, itemType: [String: Any]?, media: [String: Any]?, moq: [String: Any]?, multiSize: [String: Any]?, name: [String: Any]?, noOfBoxes: [String: Any]?, productGroupTag: [String: Any]?, productPublish: [String: Any]?, returnConfig: [String: Any]?, shortDescription: [String: Any]?, sizes: [String: Any]?, sizeGuide: [String: Any]?, slug: [String: Any]?, tags: [String: Any]?, teaserTag: [String: Any]?, trader: [String: Any]?, traderType: [String: Any]?, variants: [String: Any]?) {
            self.multiSize = multiSize

            self.sizes = sizes

            self.moq = moq

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.sizeGuide = sizeGuide

            self.command = command

            self.currency = currency

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.variants = variants

            self.itemType = itemType

            self.media = media

            self.trader = trader

            self.description = description

            self.countryOfOrigin = countryOfOrigin

            self.tags = tags

            self.hsnCode = hsnCode

            self.returnConfig = returnConfig

            self.traderType = traderType

            self.noOfBoxes = noOfBoxes

            self.highlights = highlights

            self.customOrder = customOrder

            self.categorySlug = categorySlug

            self.shortDescription = shortDescription

            self.isActive = isActive

            self.productGroupTag = productGroupTag

            self.name = name

            self.slug = slug
        }

        public func duplicate() -> Properties {
            let dict = self.dictionary!
            let copy = Properties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multiSize = try container.decode([String: Any].self, forKey: .multiSize)

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
                isDependent = try container.decode([String: Any].self, forKey: .isDependent)

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
                sizeGuide = try container.decode([String: Any].self, forKey: .sizeGuide)

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
                currency = try container.decode([String: Any].self, forKey: .currency)

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
                productPublish = try container.decode([String: Any].self, forKey: .productPublish)

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

            do {
                itemType = try container.decode([String: Any].self, forKey: .itemType)

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
                trader = try container.decode([String: Any].self, forKey: .trader)

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
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

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
                hsnCode = try container.decode([String: Any].self, forKey: .hsnCode)

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
                highlights = try container.decode([String: Any].self, forKey: .highlights)

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
                shortDescription = try container.decode([String: Any].self, forKey: .shortDescription)

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
                productGroupTag = try container.decode([String: Any].self, forKey: .productGroupTag)

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
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(command, forKey: .command)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(traderType, forKey: .traderType)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: GlobalValidation
         Used By: Catalog
     */

    class GlobalValidation: Codable {
        public var properties: Properties?

        public var title: String?

        public var type: String?

        public var definitions: [String: Any]?

        public var required: [String]?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case properties

            case title

            case type

            case definitions

            case required

            case description
        }

        public init(definitions: [String: Any]?, description: String?, properties: Properties?, required: [String]?, title: String?, type: String?) {
            self.properties = properties

            self.title = title

            self.type = type

            self.definitions = definitions

            self.required = required

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
                properties = try container.decode(Properties.self, forKey: .properties)

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
                type = try container.decode(String.self, forKey: .type)

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
                required = try container.decode([String].self, forKey: .required)

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

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(definitions, forKey: .definitions)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: TemplateValidationData
         Used By: Catalog
     */

    class TemplateValidationData: Codable {
        public var templateValidation: [String: Any]?

        public var globalValidation: GlobalValidation?

        public enum CodingKeys: String, CodingKey {
            case templateValidation = "template_validation"

            case globalValidation = "global_validation"
        }

        public init(globalValidation: GlobalValidation?, templateValidation: [String: Any]?) {
            self.templateValidation = templateValidation

            self.globalValidation = globalValidation
        }

        public func duplicate() -> TemplateValidationData {
            let dict = self.dictionary!
            let copy = TemplateValidationData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templateValidation = try container.decode([String: Any].self, forKey: .templateValidation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                globalValidation = try container.decode(GlobalValidation.self, forKey: .globalValidation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateValidation, forKey: .templateValidation)

            try? container.encodeIfPresent(globalValidation, forKey: .globalValidation)
        }
    }

    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var tag: String?

        public var id: String?

        public var departments: [String]?

        public var categories: [String]?

        public var isExpirable: Bool

        public var isActive: Bool?

        public var isArchived: Bool?

        public var attributes: [String]?

        public var isPhysical: Bool

        public var description: String?

        public var name: String?

        public var slug: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case tag

            case id

            case departments

            case categories

            case isExpirable = "is_expirable"

            case isActive = "is_active"

            case isArchived = "is_archived"

            case attributes

            case isPhysical = "is_physical"

            case description

            case name

            case slug

            case logo
        }

        public init(attributes: [String]?, categories: [String]?, departments: [String]?, description: String?, id: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, name: String?, slug: String, tag: String?) {
            self.tag = tag

            self.id = id

            self.departments = departments

            self.categories = categories

            self.isExpirable = isExpirable

            self.isActive = isActive

            self.isArchived = isArchived

            self.attributes = attributes

            self.isPhysical = isPhysical

            self.description = description

            self.name = name

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> TemplateDetails {
            let dict = self.dictionary!
            let copy = TemplateDetails(dictionary: dict)!
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
                id = try container.decode(String.self, forKey: .id)

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
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(departments, forKey: .departments)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
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
        public var type: String?

        public var templates: [String]?

        public var brand: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case templates

            case brand
        }

        public init(brand: [String]?, templates: [String]?, type: String?) {
            self.type = type

            self.templates = templates

            self.brand = brand
        }

        public func duplicate() -> ProductDownloadItemsData {
            let dict = self.dictionary!
            let copy = ProductDownloadItemsData(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: VerifiedBy
         Used By: Catalog
     */

    class VerifiedBy: Codable {
        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username
        }

        public init(username: String?, userId: String?) {
            self.userId = userId

            self.username = username
        }

        public func duplicate() -> VerifiedBy {
            let dict = self.dictionary!
            let copy = VerifiedBy(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: ProductDownloadsItems
         Used By: Catalog
     */

    class ProductDownloadsItems: Codable {
        public var data: ProductDownloadItemsData?

        public var createdBy: VerifiedBy?

        public var id: String?

        public var status: String?

        public var url: String?

        public var triggerOn: String?

        public var sellerId: Double?

        public var taskId: String?

        public var templateTags: [String: Any]?

        public var completedOn: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case createdBy = "created_by"

            case id

            case status

            case url

            case triggerOn = "trigger_on"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case templateTags = "template_tags"

            case completedOn = "completed_on"
        }

        public init(completedOn: String?, createdBy: VerifiedBy?, data: ProductDownloadItemsData?, id: String?, sellerId: Double?, status: String?, taskId: String?, templateTags: [String: Any]?, triggerOn: String?, url: String?) {
            self.data = data

            self.createdBy = createdBy

            self.id = id

            self.status = status

            self.url = url

            self.triggerOn = triggerOn

            self.sellerId = sellerId

            self.taskId = taskId

            self.templateTags = templateTags

            self.completedOn = completedOn
        }

        public func duplicate() -> ProductDownloadsItems {
            let dict = self.dictionary!
            let copy = ProductDownloadsItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(ProductDownloadItemsData.self, forKey: .data)

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

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

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
                taskId = try container.decode(String.self, forKey: .taskId)

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
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(templateTags, forKey: .templateTags)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
        }
    }

    /*
         Model: ProductDownloadsResponse
         Used By: Catalog
     */

    class ProductDownloadsResponse: Codable {
        public var items: ProductDownloadsItems?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: ProductDownloadsItems?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ProductDownloadsResponse {
            let dict = self.dictionary!
            let copy = ProductDownloadsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(ProductDownloadsItems.self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
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
        public var landscape: String

        public var portrait: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait

            case logo
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.landscape = landscape

            self.portrait = portrait

            self.logo = logo
        }

        public func duplicate() -> Media2 {
            let dict = self.dictionary!
            let copy = Media2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(String.self, forKey: .landscape)

            portrait = try container.decode(String.self, forKey: .portrait)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: Hierarchy
         Used By: Catalog
     */

    class Hierarchy: Codable {
        public var l2: Int

        public var l1: Int

        public var department: Int

        public enum CodingKeys: String, CodingKey {
            case l2

            case l1

            case department
        }

        public init(department: Int, l1: Int, l2: Int) {
            self.l2 = l2

            self.l1 = l1

            self.department = department
        }

        public func duplicate() -> Hierarchy {
            let dict = self.dictionary!
            let copy = Hierarchy(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l2 = try container.decode(Int.self, forKey: .l2)

            l1 = try container.decode(Int.self, forKey: .l1)

            department = try container.decode(Int.self, forKey: .department)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l2, forKey: .l2)

            try? container.encodeIfPresent(l1, forKey: .l1)

            try? container.encodeIfPresent(department, forKey: .department)
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
        public var ajio: CategoryMappingValues?

        public var facebook: CategoryMappingValues?

        public var google: CategoryMappingValues?

        public enum CodingKeys: String, CodingKey {
            case ajio

            case facebook

            case google
        }

        public init(ajio: CategoryMappingValues?, facebook: CategoryMappingValues?, google: CategoryMappingValues?) {
            self.ajio = ajio

            self.facebook = facebook

            self.google = google
        }

        public func duplicate() -> CategoryMapping {
            let dict = self.dictionary!
            let copy = CategoryMapping(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                google = try container.decode(CategoryMappingValues.self, forKey: .google)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ajio, forKey: .ajio)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(google, forKey: .google)
        }
    }

    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var departments: [Int]

        public var isActive: Bool

        public var media: Media2?

        public var level: Int

        public var priority: Int?

        public var hierarchy: [Hierarchy]?

        public var tryouts: [String]?

        public var name: String

        public var marketplaces: CategoryMapping?

        public var synonyms: [String]?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case departments

            case isActive = "is_active"

            case media

            case level

            case priority

            case hierarchy

            case tryouts

            case name

            case marketplaces

            case synonyms

            case slug
        }

        public init(departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?) {
            self.departments = departments

            self.isActive = isActive

            self.media = media

            self.level = level

            self.priority = priority

            self.hierarchy = hierarchy

            self.tryouts = tryouts

            self.name = name

            self.marketplaces = marketplaces

            self.synonyms = synonyms

            self.slug = slug
        }

        public func duplicate() -> CategoryRequestBody {
            let dict = self.dictionary!
            let copy = CategoryRequestBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            departments = try container.decode([Int].self, forKey: .departments)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(slug, forKey: .slug)
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
        public var id: String?

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var departments: [Int]

        public var synonyms: [String]?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var isActive: Bool

        public var media: Media2?

        public var level: Int

        public var priority: Int?

        public var hierarchy: [Hierarchy]?

        public var tryouts: [String]?

        public var name: String

        public var marketplaces: CategoryMapping?

        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case departments

            case synonyms

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case media

            case level

            case priority

            case hierarchy

            case tryouts

            case name

            case marketplaces

            case uid

            case slug
        }

        public init(createdBy: [String: Any]?, createdOn: String?, departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?, uid: Int?, id: String?) {
            self.id = id

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.departments = departments

            self.synonyms = synonyms

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.media = media

            self.level = level

            self.priority = priority

            self.hierarchy = hierarchy

            self.tryouts = tryouts

            self.name = name

            self.marketplaces = marketplaces

            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> Category {
            let dict = self.dictionary!
            let copy = Category(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: CategoryResponse
         Used By: Catalog
     */

    class CategoryResponse: Codable {
        public var items: [Category]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Category]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CategoryResponse {
            let dict = self.dictionary!
            let copy = CategoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Category].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
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
         Model: OrderQuantity
         Used By: Catalog
     */

    class OrderQuantity: Codable {
        public var maximum: Int?

        public var minimum: Int?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case maximum

            case minimum

            case isSet = "is_set"
        }

        public init(isSet: Bool?, maximum: Int?, minimum: Int?) {
            self.maximum = maximum

            self.minimum = minimum

            self.isSet = isSet
        }

        public func duplicate() -> OrderQuantity {
            let dict = self.dictionary!
            let copy = OrderQuantity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maximum = try container.decode(Int.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(minimum, forKey: .minimum)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
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
         Model: ProductPublish
         Used By: Catalog
     */

    class ProductPublish: Codable {
        public var productOnlineDate: String?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case productOnlineDate = "product_online_date"

            case isSet = "is_set"
        }

        public init(isSet: Bool?, productOnlineDate: String?) {
            self.productOnlineDate = productOnlineDate

            self.isSet = isSet
        }

        public func duplicate() -> ProductPublish {
            let dict = self.dictionary!
            let copy = ProductPublish(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }

    /*
         Model: Trader
         Used By: Catalog
     */

    class Trader: Codable {
        public var type: String?

        public var address: [String]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case address

            case name
        }

        public init(address: [String]?, name: String?, type: String?) {
            self.type = type

            self.address = address

            self.name = name
        }

        public func duplicate() -> Trader {
            let dict = self.dictionary!
            let copy = Trader(dictionary: dict)!
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
                address = try container.decode([String].self, forKey: .address)

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

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ReturnConfig
         Used By: Catalog
     */

    class ReturnConfig: Codable {
        public var time: Int

        public var unit: String

        public var returnable: Bool

        public enum CodingKeys: String, CodingKey {
            case time

            case unit

            case returnable
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.time = time

            self.unit = unit

            self.returnable = returnable
        }

        public func duplicate() -> ReturnConfig {
            let dict = self.dictionary!
            let copy = ReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            time = try container.decode(Int.self, forKey: .time)

            unit = try container.decode(String.self, forKey: .unit)

            returnable = try container.decode(Bool.self, forKey: .returnable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(returnable, forKey: .returnable)
        }
    }

    /*
         Model: CustomOrder
         Used By: Catalog
     */

    class CustomOrder: Codable {
        public var manufacturingTimeUnit: String?

        public var isCustomOrder: Bool?

        public var manufacturingTime: Int?

        public enum CodingKeys: String, CodingKey {
            case manufacturingTimeUnit = "manufacturing_time_unit"

            case isCustomOrder = "is_custom_order"

            case manufacturingTime = "manufacturing_time"
        }

        public init(isCustomOrder: Bool?, manufacturingTime: Int?, manufacturingTimeUnit: String?) {
            self.manufacturingTimeUnit = manufacturingTimeUnit

            self.isCustomOrder = isCustomOrder

            self.manufacturingTime = manufacturingTime
        }

        public func duplicate() -> CustomOrder {
            let dict = self.dictionary!
            let copy = CustomOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)

            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
        }
    }

    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var multiSize: Bool?

        public var moq: OrderQuantity?

        public var isSet: Bool?

        public var itemCode: String

        public var isDependent: Bool?

        public var brandUid: Int

        public var requester: String?

        public var customJson: [String: Any]?

        public var sizeGuide: String?

        public var action: String?

        public var uid: Int?

        public var currency: String

        public var companyId: Int

        public var templateTag: String

        public var teaserTag: TeaserTag?

        public var productPublish: ProductPublish?

        public var changeRequestId: String?

        public var variants: [String: Any]?

        public var itemType: String

        public var media: [Media1]?

        public var trader: [Trader]

        public var bulkJobId: String?

        public var description: String?

        public var countryOfOrigin: String

        public var tags: [String]?

        public var hsnCode: String

        public var returnConfig: ReturnConfig

        public var categorySlug: String

        public var highlights: [String]?

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var customOrder: CustomOrder?

        public var shortDescription: String?

        public var departments: [Int]

        public var isActive: Bool?

        public var productGroupTag: [String]?

        public var name: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case multiSize = "multi_size"

            case moq

            case isSet = "is_set"

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case requester

            case customJson = "_custom_json"

            case sizeGuide = "size_guide"

            case action

            case uid

            case currency

            case companyId = "company_id"

            case templateTag = "template_tag"

            case teaserTag = "teaser_tag"

            case productPublish = "product_publish"

            case changeRequestId = "change_request_id"

            case variants

            case itemType = "item_type"

            case media

            case trader

            case bulkJobId = "bulk_job_id"

            case description

            case countryOfOrigin = "country_of_origin"

            case tags

            case hsnCode = "hsn_code"

            case returnConfig = "return_config"

            case categorySlug = "category_slug"

            case highlights

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case customOrder = "custom_order"

            case shortDescription = "short_description"

            case departments

            case isActive = "is_active"

            case productGroupTag = "product_group_tag"

            case name

            case slug
        }

        public init(action: String?, brandUid: Int, bulkJobId: String?, categorySlug: String, changeRequestId: String?, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder?, departments: [Int], description: String?, highlights: [String]?, hsnCode: String, isActive: Bool?, isDependent: Bool?, isImageLessProduct: Bool?, isSet: Bool?, itemCode: String, itemType: String, media: [Media1]?, moq: OrderQuantity?, multiSize: Bool?, name: String, noOfBoxes: Int?, productGroupTag: [String]?, productPublish: ProductPublish?, requester: String?, returnConfig: ReturnConfig, shortDescription: String?, sizeGuide: String?, slug: String, tags: [String]?, teaserTag: TeaserTag?, templateTag: String, trader: [Trader], uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.multiSize = multiSize

            self.moq = moq

            self.isSet = isSet

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.requester = requester

            self.customJson = customJson

            self.sizeGuide = sizeGuide

            self.action = action

            self.uid = uid

            self.currency = currency

            self.companyId = companyId

            self.templateTag = templateTag

            self.teaserTag = teaserTag

            self.productPublish = productPublish

            self.changeRequestId = changeRequestId

            self.variants = variants

            self.itemType = itemType

            self.media = media

            self.trader = trader

            self.bulkJobId = bulkJobId

            self.description = description

            self.countryOfOrigin = countryOfOrigin

            self.tags = tags

            self.hsnCode = hsnCode

            self.returnConfig = returnConfig

            self.categorySlug = categorySlug

            self.highlights = highlights

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.customOrder = customOrder

            self.shortDescription = shortDescription

            self.departments = departments

            self.isActive = isActive

            self.productGroupTag = productGroupTag

            self.name = name

            self.slug = slug
        }

        public func duplicate() -> ProductCreateUpdate {
            let dict = self.dictionary!
            let copy = ProductCreateUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

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

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                requester = try container.decode(String.self, forKey: .requester)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(Int.self, forKey: .companyId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

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
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: ProductPublished
         Used By: Catalog
     */

    class ProductPublished: Codable {
        public var productOnlineDate: Int?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case productOnlineDate = "product_online_date"

            case isSet = "is_set"
        }

        public init(isSet: Bool?, productOnlineDate: Int?) {
            self.productOnlineDate = productOnlineDate

            self.isSet = isSet
        }

        public func duplicate() -> ProductPublished {
            let dict = self.dictionary!
            let copy = ProductPublished(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productOnlineDate = try container.decode(Int.self, forKey: .productOnlineDate)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }

    /*
         Model: Image
         Used By: Catalog
     */

    class Image: Codable {
        public var aspectRatio: String?

        public var secureUrl: String?

        public var url: String?

        public var aspectRatioF: Double?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"

            case url

            case aspectRatioF = "aspect_ratio_f"
        }

        public init(aspectRatio: String?, aspectRatioF: Double?, secureUrl: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl

            self.url = url

            self.aspectRatioF = aspectRatioF
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
                url = try container.decode(String.self, forKey: .url)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)
        }
    }

    /*
         Model: Logo
         Used By: Catalog
     */

    class Logo: Codable {
        public var aspectRatio: String?

        public var secureUrl: String?

        public var url: String?

        public var aspectRatioF: Int?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"

            case url

            case aspectRatioF = "aspect_ratio_f"
        }

        public init(aspectRatio: String?, aspectRatioF: Int?, secureUrl: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl

            self.url = url

            self.aspectRatioF = aspectRatioF
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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)
        }
    }

    /*
         Model: Brand
         Used By: Catalog
     */

    class Brand: Codable {
        public var name: String?

        public var uid: Int?

        public var logo: Logo?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case logo
        }

        public init(logo: Logo?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.logo = logo
        }

        public func duplicate() -> Brand {
            let dict = self.dictionary!
            let copy = Brand(dictionary: dict)!
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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Logo.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var multiSize: Bool?

        public var sizes: [[String: Any]]?

        public var moq: [String: Any]?

        public var id: String?

        public var isSet: Bool?

        public var itemCode: String?

        public var isDependent: Bool?

        public var brandUid: Int?

        public var customJson: [String: Any]?

        public var sizeGuide: String?

        public var uid: Int?

        public var currency: String?

        public var templateTag: String?

        public var productPublish: ProductPublished?

        public var variants: [String: Any]?

        public var images: [Image]?

        public var itemType: String?

        public var imageNature: String?

        public var media: [Media1]?

        public var description: String?

        public var isPhysical: Bool?

        public var countryOfOrigin: String?

        public var hsnCode: String?

        public var color: String?

        public var categorySlug: String?

        public var highlights: [String]?

        public var customOrder: [String: Any]?

        public var primaryColor: String?

        public var l3Mapping: [String]?

        public var shortDescription: String?

        public var departments: [Int]?

        public var brand: Brand?

        public var isActive: Bool?

        public var allSizes: [[String: Any]]?

        public var name: String?

        public var slug: String?

        public var categoryUid: Int?

        public enum CodingKeys: String, CodingKey {
            case multiSize = "multi_size"

            case sizes

            case moq

            case id

            case isSet = "is_set"

            case itemCode = "item_code"

            case isDependent = "is_dependent"

            case brandUid = "brand_uid"

            case customJson = "_custom_json"

            case sizeGuide = "size_guide"

            case uid

            case currency

            case templateTag = "template_tag"

            case productPublish = "product_publish"

            case variants

            case images

            case itemType = "item_type"

            case imageNature = "image_nature"

            case media

            case description

            case isPhysical = "is_physical"

            case countryOfOrigin = "country_of_origin"

            case hsnCode = "hsn_code"

            case color

            case categorySlug = "category_slug"

            case highlights

            case customOrder = "custom_order"

            case primaryColor = "primary_color"

            case l3Mapping = "l3_mapping"

            case shortDescription = "short_description"

            case departments

            case brand

            case isActive = "is_active"

            case allSizes = "all_sizes"

            case name

            case slug

            case categoryUid = "category_uid"
        }

        public init(allSizes: [[String: Any]]?, brand: Brand?, brandUid: Int?, categorySlug: String?, categoryUid: Int?, color: String?, countryOfOrigin: String?, currency: String?, customOrder: [String: Any]?, departments: [Int]?, description: String?, highlights: [String]?, hsnCode: String?, id: String?, images: [Image]?, imageNature: String?, isActive: Bool?, isDependent: Bool?, isPhysical: Bool?, isSet: Bool?, itemCode: String?, itemType: String?, l3Mapping: [String]?, media: [Media1]?, moq: [String: Any]?, multiSize: Bool?, name: String?, primaryColor: String?, productPublish: ProductPublished?, shortDescription: String?, sizes: [[String: Any]]?, sizeGuide: String?, slug: String?, templateTag: String?, uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.multiSize = multiSize

            self.sizes = sizes

            self.moq = moq

            self.id = id

            self.isSet = isSet

            self.itemCode = itemCode

            self.isDependent = isDependent

            self.brandUid = brandUid

            self.customJson = customJson

            self.sizeGuide = sizeGuide

            self.uid = uid

            self.currency = currency

            self.templateTag = templateTag

            self.productPublish = productPublish

            self.variants = variants

            self.images = images

            self.itemType = itemType

            self.imageNature = imageNature

            self.media = media

            self.description = description

            self.isPhysical = isPhysical

            self.countryOfOrigin = countryOfOrigin

            self.hsnCode = hsnCode

            self.color = color

            self.categorySlug = categorySlug

            self.highlights = highlights

            self.customOrder = customOrder

            self.primaryColor = primaryColor

            self.l3Mapping = l3Mapping

            self.shortDescription = shortDescription

            self.departments = departments

            self.brand = brand

            self.isActive = isActive

            self.allSizes = allSizes

            self.name = name

            self.slug = slug

            self.categoryUid = categoryUid
        }

        public func duplicate() -> Product {
            let dict = self.dictionary!
            let copy = Product(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                media = try container.decode([Media1].self, forKey: .media)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                categorySlug = try container.decode(String.self, forKey: .categorySlug)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                departments = try container.decode([Int].self, forKey: .departments)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                name = try container.decode(String.self, forKey: .name)

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
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)
        }
    }

    /*
         Model: ProductListingResponse
         Used By: Catalog
     */

    class ProductListingResponse: Codable {
        public var items: [Product]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Product]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ProductListingResponse {
            let dict = self.dictionary!
            let copy = ProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Product].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
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
        public var email: String?

        public var uid: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case uid

            case userId = "user_id"

            case username
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.email = email

            self.uid = uid

            self.userId = userId

            self.username = username
        }

        public func duplicate() -> UserInfo1 {
            let dict = self.dictionary!
            let copy = UserInfo1(dictionary: dict)!
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
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var companyId: Int

        public var filePath: String?

        public var createdBy: UserInfo1?

        public var modifiedOn: String?

        public var total: Int

        public var templateTag: String?

        public var succeed: Int?

        public var modifiedBy: UserInfo1?

        public var createdOn: String

        public var isActive: Bool?

        public var trackingUrl: String?

        public var cancelledRecords: [[String: Any]]?

        public var failedRecords: [[String: Any]]?

        public var customTemplateTag: String?

        public var failed: Int?

        public var stage: String?

        public var cancelled: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case filePath = "file_path"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case total

            case templateTag = "template_tag"

            case succeed

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case trackingUrl = "tracking_url"

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case customTemplateTag = "custom_template_tag"

            case failed

            case stage

            case cancelled
        }

        public init(cancelled: Int?, cancelledRecords: [[String: Any]]?, companyId: Int, createdBy: UserInfo1?, createdOn: String, customTemplateTag: String?, failed: Int?, failedRecords: [[String: Any]]?, filePath: String?, isActive: Bool?, modifiedBy: UserInfo1?, modifiedOn: String?, stage: String?, succeed: Int?, templateTag: String?, total: Int, trackingUrl: String?) {
            self.companyId = companyId

            self.filePath = filePath

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.total = total

            self.templateTag = templateTag

            self.succeed = succeed

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.trackingUrl = trackingUrl

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.customTemplateTag = customTemplateTag

            self.failed = failed

            self.stage = stage

            self.cancelled = cancelled
        }

        public func duplicate() -> BulkJob {
            let dict = self.dictionary!
            let copy = BulkJob(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            total = try container.decode(Int.self, forKey: .total)

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
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

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
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

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
                stage = try container.decode(String.self, forKey: .stage)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
        }
    }

    /*
         Model: UserDetail
         Used By: Catalog
     */

    class UserDetail: Codable {
        public var userId: String?

        public var fullName: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case fullName = "full_name"

            case username
        }

        public init(fullName: String?, username: String?, userId: String?) {
            self.userId = userId

            self.fullName = fullName

            self.username = username
        }

        public func duplicate() -> UserDetail {
            let dict = self.dictionary!
            let copy = UserDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: ProductBulkRequest
         Used By: Catalog
     */

    class ProductBulkRequest: Codable {
        public var companyId: Int?

        public var templateTag: String?

        public var createdBy: UserDetail?

        public var modifiedOn: String?

        public var total: Int?

        public var filePath: String?

        public var succeed: Int?

        public var modifiedBy: UserDetail?

        public var template: ProductTemplate?

        public var createdOn: String?

        public var isActive: Bool?

        public var cancelledRecords: [String]?

        public var failedRecords: [String]?

        public var failed: Int?

        public var stage: String?

        public var cancelled: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case templateTag = "template_tag"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case total

            case filePath = "file_path"

            case succeed

            case modifiedBy = "modified_by"

            case template

            case createdOn = "created_on"

            case isActive = "is_active"

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case failed

            case stage

            case cancelled
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserDetail?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, isActive: Bool?, modifiedBy: UserDetail?, modifiedOn: String?, stage: String?, succeed: Int?, template: ProductTemplate?, templateTag: String?, total: Int?) {
            self.companyId = companyId

            self.templateTag = templateTag

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.total = total

            self.filePath = filePath

            self.succeed = succeed

            self.modifiedBy = modifiedBy

            self.template = template

            self.createdOn = createdOn

            self.isActive = isActive

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.failed = failed

            self.stage = stage

            self.cancelled = cancelled
        }

        public func duplicate() -> ProductBulkRequest {
            let dict = self.dictionary!
            let copy = ProductBulkRequest(dictionary: dict)!
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
                templateTag = try container.decode(String.self, forKey: .templateTag)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                filePath = try container.decode(String.self, forKey: .filePath)

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
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

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
                failed = try container.decode(Int.self, forKey: .failed)

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
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
        }
    }

    /*
         Model: ProductBulkRequestList
         Used By: Catalog
     */

    class ProductBulkRequestList: Codable {
        public var items: ProductBulkRequest?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: ProductBulkRequest?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ProductBulkRequestList {
            let dict = self.dictionary!
            let copy = ProductBulkRequestList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(ProductBulkRequest.self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var companyId: Int

        public var data: [[String: Any]]

        public var templateTag: String

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case data

            case templateTag = "template_tag"

            case batchId = "batch_id"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.companyId = companyId

            self.data = data

            self.templateTag = templateTag

            self.batchId = batchId
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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
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

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case userId = "user_id"

            case username
        }

        public init(companyId: Int?, username: String?, userId: String?) {
            self.companyId = companyId

            self.userId = userId

            self.username = username
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
                userId = try container.decode(String.self, forKey: .userId)

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

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: Items
         Used By: Catalog
     */

    class Items: Codable {
        public var filePath: String?

        public var companyId: Int?

        public var createdBy: UserCommon?

        public var modifiedOn: String?

        public var total: Int?

        public var id: String?

        public var succeed: Int?

        public var modifiedBy: UserCommon?

        public var createdOn: String?

        public var isActive: Bool?

        public var trackingUrl: String?

        public var cancelledRecords: [String]?

        public var failedRecords: [String]?

        public var failed: Int?

        public var stage: String?

        public var cancelled: Int?

        public var retry: Int?

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case companyId = "company_id"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case total

            case id

            case succeed

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case trackingUrl = "tracking_url"

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case failed

            case stage

            case cancelled

            case retry
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserCommon?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: UserCommon?, modifiedOn: String?, retry: Int?, stage: String?, succeed: Int?, total: Int?, trackingUrl: String?) {
            self.filePath = filePath

            self.companyId = companyId

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.total = total

            self.id = id

            self.succeed = succeed

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.trackingUrl = trackingUrl

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.failed = failed

            self.stage = stage

            self.cancelled = cancelled

            self.retry = retry
        }

        public func duplicate() -> Items {
            let dict = self.dictionary!
            let copy = Items(dictionary: dict)!
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
                createdBy = try container.decode(UserCommon.self, forKey: .createdBy)

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
                total = try container.decode(Int.self, forKey: .total)

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
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

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
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                retry = try container.decode(Int.self, forKey: .retry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(retry, forKey: .retry)
        }
    }

    /*
         Model: BulkAssetResponse
         Used By: Catalog
     */

    class BulkAssetResponse: Codable {
        public var items: [Items]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Items]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> BulkAssetResponse {
            let dict = self.dictionary!
            let copy = BulkAssetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Items].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductSizeDeleteDataResponse
         Used By: Catalog
     */

    class ProductSizeDeleteDataResponse: Codable {
        public var companyId: Int?

        public var size: String?

        public var itemId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case size

            case itemId = "item_id"
        }

        public init(companyId: Int?, itemId: Int?, size: String?) {
            self.companyId = companyId

            self.size = size

            self.itemId = itemId
        }

        public func duplicate() -> ProductSizeDeleteDataResponse {
            let dict = self.dictionary!
            let copy = ProductSizeDeleteDataResponse(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
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
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var gtinValue: String

        public var gtinType: String

        public var primary: Bool?

        public enum CodingKeys: String, CodingKey {
            case gtinValue = "gtin_value"

            case gtinType = "gtin_type"

            case primary
        }

        public init(gtinType: String, gtinValue: String, primary: Bool?) {
            self.gtinValue = gtinValue

            self.gtinType = gtinType

            self.primary = primary
        }

        public func duplicate() -> GTIN {
            let dict = self.dictionary!
            let copy = GTIN(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gtinValue = try container.decode(String.self, forKey: .gtinValue)

            gtinType = try container.decode(String.self, forKey: .gtinType)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(primary, forKey: .primary)
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
        public var quantity: Int?

        public var sizeDistribution: SizeDistribution

        public enum CodingKeys: String, CodingKey {
            case quantity

            case sizeDistribution = "size_distribution"
        }

        public init(quantity: Int?, sizeDistribution: SizeDistribution) {
            self.quantity = quantity

            self.sizeDistribution = sizeDistribution
        }

        public func duplicate() -> InventorySet {
            let dict = self.dictionary!
            let copy = InventorySet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizeDistribution = try container.decode(SizeDistribution.self, forKey: .sizeDistribution)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
        }
    }

    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var identifiers: [GTIN]

        public var priceEffective: Double

        public var itemLength: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var isSet: Bool?

        public var itemHeight: Double?

        public var itemWidth: Double?

        public var priceTransfer: Double?

        public var size: String

        public var currency: String

        public var expirationDate: String?

        public var itemWeightUnitOfMeasure: String?

        public var storeCode: String

        public var itemWeight: Double?

        public var set: InventorySet?

        public var quantity: Int

        public var price: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case priceEffective = "price_effective"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case isSet = "is_set"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case priceTransfer = "price_transfer"

            case size

            case currency

            case expirationDate = "expiration_date"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case storeCode = "store_code"

            case itemWeight = "item_weight"

            case set

            case quantity

            case price
        }

        public init(currency: String, expirationDate: String?, identifiers: [GTIN], isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, set: InventorySet?, size: String, storeCode: String) {
            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.isSet = isSet

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.priceTransfer = priceTransfer

            self.size = size

            self.currency = currency

            self.expirationDate = expirationDate

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.storeCode = storeCode

            self.itemWeight = itemWeight

            self.set = set

            self.quantity = quantity

            self.price = price
        }

        public func duplicate() -> InvSize {
            let dict = self.dictionary!
            let copy = InvSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            size = try container.decode(String.self, forKey: .size)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            price = try container.decode(Double.self, forKey: .price)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: ItemQuery
         Used By: Catalog
     */

    class ItemQuery: Codable {
        public var itemCode: String?

        public var brandUid: Int?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case uid
        }

        public init(brandUid: Int?, itemCode: String?, uid: Int?) {
            self.itemCode = itemCode

            self.brandUid = brandUid

            self.uid = uid
        }

        public func duplicate() -> ItemQuery {
            let dict = self.dictionary!
            let copy = ItemQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var companyId: Int

        public var sizes: [InvSize]

        public var item: ItemQuery

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sizes

            case item
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.companyId = companyId

            self.sizes = sizes

            self.item = item
        }

        public func duplicate() -> InventoryRequest {
            let dict = self.dictionary!
            let copy = InventoryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([InvSize].self, forKey: .sizes)

            item = try container.decode(ItemQuery.self, forKey: .item)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }

    /*
         Model: InventoryResponse
         Used By: Catalog
     */

    class InventoryResponse: Codable {
        public var identifiers: [String: Any]?

        public var itemId: Int?

        public var priceEffective: Int?

        public var sellableQuantity: Int?

        public var sellerIdentifier: Int?

        public var priceTransfer: Int?

        public var inventoryUpdatedOn: String?

        public var size: String?

        public var store: [String: Any]?

        public var quantity: Int?

        public var uid: String?

        public var currency: String?

        public var price: Int?

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case sellableQuantity = "sellable_quantity"

            case sellerIdentifier = "seller_identifier"

            case priceTransfer = "price_transfer"

            case inventoryUpdatedOn = "inventory_updated_on"

            case size

            case store

            case quantity

            case uid

            case currency

            case price
        }

        public init(currency: String?, identifiers: [String: Any]?, inventoryUpdatedOn: String?, itemId: Int?, price: Int?, priceEffective: Int?, priceTransfer: Int?, quantity: Int?, sellableQuantity: Int?, sellerIdentifier: Int?, size: String?, store: [String: Any]?, uid: String?) {
            self.identifiers = identifiers

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.sellableQuantity = sellableQuantity

            self.sellerIdentifier = sellerIdentifier

            self.priceTransfer = priceTransfer

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.size = size

            self.store = store

            self.quantity = quantity

            self.uid = uid

            self.currency = currency

            self.price = price
        }

        public func duplicate() -> InventoryResponse {
            let dict = self.dictionary!
            let copy = InventoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

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
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

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
                sellerIdentifier = try container.decode(Int.self, forKey: .sellerIdentifier)

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
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                price = try container.decode(Int.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: InventoryDeleteData
         Used By: Catalog
     */

    class InventoryDeleteData: Codable {
        public var size: String?

        public var itemId: Int?

        public var locationId: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case itemId = "item_id"

            case locationId = "location_id"
        }

        public init(itemId: Int?, locationId: Int?, size: String?) {
            self.size = size

            self.itemId = itemId

            self.locationId = locationId
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
                itemId = try container.decode(Int.self, forKey: .itemId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(locationId, forKey: .locationId)
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
        public var companyId: Int?

        public var filePath: String?

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var id: String?

        public var total: Int?

        public var succeed: Int?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var isActive: Bool?

        public var cancelledRecords: [String]?

        public var failedRecords: [String]?

        public var failed: Int?

        public var stage: String?

        public var cancelled: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case filePath = "file_path"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case id

            case total

            case succeed

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case failed

            case stage

            case cancelled
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: [String: Any]?, modifiedOn: String?, stage: String?, succeed: Int?, total: Int?) {
            self.companyId = companyId

            self.filePath = filePath

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.id = id

            self.total = total

            self.succeed = succeed

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.failed = failed

            self.stage = stage

            self.cancelled = cancelled
        }

        public func duplicate() -> BulkInventoryGetItems {
            let dict = self.dictionary!
            let copy = BulkInventoryGetItems(dictionary: dict)!
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
                filePath = try container.decode(String.self, forKey: .filePath)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                total = try container.decode(Int.self, forKey: .total)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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
                stage = try container.decode(String.self, forKey: .stage)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
        }
    }

    /*
         Model: BulkInventoryGet
         Used By: Catalog
     */

    class BulkInventoryGet: Codable {
        public var items: [BulkInventoryGetItems]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BulkInventoryGetItems]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> BulkInventoryGet {
            let dict = self.dictionary!
            let copy = BulkInventoryGet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BulkInventoryGetItems].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var identifiers: [[String: Any]]?

        public var priceEffective: Double

        public var itemLength: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var isSet: Bool?

        public var itemHeight: Double?

        public var itemWidth: Double?

        public var sellerIdentifier: String

        public var priceTransfer: Double?

        public var size: String?

        public var currency: String

        public var expirationDate: String?

        public var itemWeightUnitOfMeasure: String?

        public var storeCode: String

        public var itemWeight: Double?

        public var set: InventorySet?

        public var quantity: Int

        public var price: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case priceEffective = "price_effective"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case isSet = "is_set"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case sellerIdentifier = "seller_identifier"

            case priceTransfer = "price_transfer"

            case size

            case currency

            case expirationDate = "expiration_date"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case storeCode = "store_code"

            case itemWeight = "item_weight"

            case set

            case quantity

            case price
        }

        public init(currency: String, expirationDate: String?, identifiers: [[String: Any]]?, isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, sellerIdentifier: String, set: InventorySet?, size: String?, storeCode: String) {
            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.isSet = isSet

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.sellerIdentifier = sellerIdentifier

            self.priceTransfer = priceTransfer

            self.size = size

            self.currency = currency

            self.expirationDate = expirationDate

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.storeCode = storeCode

            self.itemWeight = itemWeight

            self.set = set

            self.quantity = quantity

            self.price = price
        }

        public func duplicate() -> Size1 {
            let dict = self.dictionary!
            let copy = Size1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([[String: Any]].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            price = try container.decode(Double.self, forKey: .price)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(size, forKey: .size)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var companyId: Int

        public var sizes: [Size1]

        public var user: [String: Any]?

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sizes

            case user

            case batchId = "batch_id"
        }

        public init(batchId: String, companyId: Int, sizes: [Size1], user: [String: Any]?) {
            self.companyId = companyId

            self.sizes = sizes

            self.user = user

            self.batchId = batchId
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

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }

    /*
         Model: InventoryExportRequest
         Used By: Catalog
     */

    class InventoryExportRequest: Codable {
        public var type: String?

        public var store: [Int]?

        public var brand: [Int]?

        public enum CodingKeys: String, CodingKey {
            case type

            case store

            case brand
        }

        public init(brand: [Int]?, store: [Int]?, type: String?) {
            self.type = type

            self.store = store

            self.brand = brand
        }

        public func duplicate() -> InventoryExportRequest {
            let dict = self.dictionary!
            let copy = InventoryExportRequest(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)
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

        public var triggerOn: String?

        public var taskId: String

        public var requestParams: [String: Any]?

        public var completedOn: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case url

            case sellerId = "seller_id"

            case triggerOn = "trigger_on"

            case taskId = "task_id"

            case requestParams = "request_params"

            case completedOn = "completed_on"
        }

        public init(completedOn: String?, requestParams: [String: Any]?, sellerId: Int, status: String?, taskId: String, triggerOn: String?, url: String?) {
            self.status = status

            self.url = url

            self.sellerId = sellerId

            self.triggerOn = triggerOn

            self.taskId = taskId

            self.requestParams = requestParams

            self.completedOn = completedOn
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
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
        }
    }

    /*
         Model: FilerList
         Used By: Catalog
     */

    class FilerList: Codable {
        public var value: String?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case display
        }

        public init(display: String?, value: String?) {
            self.value = value

            self.display = display
        }

        public func duplicate() -> FilerList {
            let dict = self.dictionary!
            let copy = FilerList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

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

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(display, forKey: .display)
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
        public var companyId: Int

        public var tax1: Double

        public var threshold2: Double?

        public var threshold1: Double

        public var hsnCode: String

        public var taxOnEsp: Bool?

        public var tax2: Double?

        public var uid: Int?

        public var hs2Code: String

        public var taxOnMrp: Bool

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case tax1

            case threshold2

            case threshold1

            case hsnCode = "hsn_code"

            case taxOnEsp = "tax_on_esp"

            case tax2

            case uid

            case hs2Code = "hs2_code"

            case taxOnMrp = "tax_on_mrp"
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, tax1: Double, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool, threshold1: Double, threshold2: Double?, uid: Int?) {
            self.companyId = companyId

            self.tax1 = tax1

            self.threshold2 = threshold2

            self.threshold1 = threshold1

            self.hsnCode = hsnCode

            self.taxOnEsp = taxOnEsp

            self.tax2 = tax2

            self.uid = uid

            self.hs2Code = hs2Code

            self.taxOnMrp = taxOnMrp
        }

        public func duplicate() -> HsnUpsert {
            let dict = self.dictionary!
            let copy = HsnUpsert(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            tax1 = try container.decode(Double.self, forKey: .tax1)

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            threshold1 = try container.decode(Double.self, forKey: .threshold1)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hs2Code = try container.decode(String.self, forKey: .hs2Code)

            taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)
        }
    }

    /*
         Model: HsnCodesObject
         Used By: Catalog
     */

    class HsnCodesObject: Codable {
        public var companyId: Int?

        public var tax1: Double?

        public var modifiedOn: String?

        public var id: String?

        public var threshold2: Double?

        public var threshold1: Double?

        public var hsnCode: String?

        public var taxOnEsp: Bool?

        public var tax2: Double?

        public var hs2Code: String?

        public var taxOnMrp: Bool?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case tax1

            case modifiedOn = "modified_on"

            case id

            case threshold2

            case threshold1

            case hsnCode = "hsn_code"

            case taxOnEsp = "tax_on_esp"

            case tax2

            case hs2Code = "hs2_code"

            case taxOnMrp = "tax_on_mrp"
        }

        public init(companyId: Int?, hs2Code: String?, hsnCode: String?, id: String?, modifiedOn: String?, tax1: Double?, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool?, threshold1: Double?, threshold2: Double?) {
            self.companyId = companyId

            self.tax1 = tax1

            self.modifiedOn = modifiedOn

            self.id = id

            self.threshold2 = threshold2

            self.threshold1 = threshold1

            self.hsnCode = hsnCode

            self.taxOnEsp = taxOnEsp

            self.tax2 = tax2

            self.hs2Code = hs2Code

            self.taxOnMrp = taxOnMrp
        }

        public func duplicate() -> HsnCodesObject {
            let dict = self.dictionary!
            let copy = HsnCodesObject(dictionary: dict)!
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
                tax1 = try container.decode(Double.self, forKey: .tax1)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

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
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                tax2 = try container.decode(Double.self, forKey: .tax2)

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
                taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)
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
        public var hasPrevious: Bool?

        public var hasNext: Bool?

        public var current: String?

        public var itemTotal: Int?

        public var size: Int?

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case current

            case itemTotal = "item_total"

            case size
        }

        public init(current: String?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, size: Int?) {
            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.current = current

            self.itemTotal = itemTotal

            self.size = size
        }

        public func duplicate() -> PageResponse {
            let dict = self.dictionary!
            let copy = PageResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

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

            do {
                current = try container.decode(String.self, forKey: .current)

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
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }

    /*
         Model: HsnCodesListingResponse
         Used By: Catalog
     */

    class HsnCodesListingResponse: Codable {
        public var items: [HsnCodesObject]?

        public var page: PageResponse?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [HsnCodesObject]?, page: PageResponse?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> HsnCodesListingResponse {
            let dict = self.dictionary!
            let copy = HsnCodesListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([HsnCodesObject].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(PageResponse.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
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
        public var departments: [String]?

        public var banners: ImageUrls?

        public var discount: String?

        public var name: String?

        public var action: Action?

        public var uid: Int?

        public var slug: String?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case departments

            case banners

            case discount

            case name

            case action

            case uid

            case slug

            case logo
        }

        public init(action: Action?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
            self.departments = departments

            self.banners = banners

            self.discount = discount

            self.name = name

            self.action = action

            self.uid = uid

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> BrandItem {
            let dict = self.dictionary!
            let copy = BrandItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                discount = try container.decode(String.self, forKey: .discount)

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

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: BrandListingResponse
         Used By: Catalog
     */

    class BrandListingResponse: Codable {
        public var items: [BrandItem]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BrandItem]?, page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> BrandListingResponse {
            let dict = self.dictionary!
            let copy = BrandListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BrandItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Department
         Used By: Catalog
     */

    class Department: Codable {
        public var priorityOrder: Int?

        public var name: String?

        public var uid: Int?

        public var slug: String?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case priorityOrder = "priority_order"

            case name

            case uid

            case slug

            case logo
        }

        public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.priorityOrder = priorityOrder

            self.name = name

            self.uid = uid

            self.slug = slug

            self.logo = logo
        }

        public func duplicate() -> Department {
            let dict = self.dictionary!
            let copy = Department(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)
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
         Model: ThirdLevelChild
         Used By: Catalog
     */

    class ThirdLevelChild: Codable {
        public var childs: [[String: Any]]?

        public var banners: ImageUrls?

        public var customJson: [String: Any]?

        public var name: String?

        public var action: Action?

        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case childs

            case banners

            case customJson = "_custom_json"

            case name

            case action

            case uid

            case slug
        }

        public init(action: Action?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.childs = childs

            self.banners = banners

            self.customJson = customJson

            self.name = name

            self.action = action

            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> ThirdLevelChild {
            let dict = self.dictionary!
            let copy = ThirdLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: SecondLevelChild
         Used By: Catalog
     */

    class SecondLevelChild: Codable {
        public var childs: [ThirdLevelChild]?

        public var banners: ImageUrls?

        public var customJson: [String: Any]?

        public var name: String?

        public var action: Action?

        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case childs

            case banners

            case customJson = "_custom_json"

            case name

            case action

            case uid

            case slug
        }

        public init(action: Action?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.childs = childs

            self.banners = banners

            self.customJson = customJson

            self.name = name

            self.action = action

            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> SecondLevelChild {
            let dict = self.dictionary!
            let copy = SecondLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: Child
         Used By: Catalog
     */

    class Child: Codable {
        public var childs: [SecondLevelChild]?

        public var banners: ImageUrls?

        public var customJson: [String: Any]?

        public var name: String?

        public var action: Action?

        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case childs

            case banners

            case customJson = "_custom_json"

            case name

            case action

            case uid

            case slug
        }

        public init(action: Action?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.childs = childs

            self.banners = banners

            self.customJson = customJson

            self.name = name

            self.action = action

            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> Child {
            let dict = self.dictionary!
            let copy = Child(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: CategoryItems
         Used By: Catalog
     */

    class CategoryItems: Codable {
        public var childs: [Child]?

        public var banners: ImageUrls?

        public var name: String?

        public var action: Action?

        public var uid: Int?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case childs

            case banners

            case name

            case action

            case uid

            case slug
        }

        public init(action: Action?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
            self.childs = childs

            self.banners = banners

            self.name = name

            self.action = action

            self.uid = uid

            self.slug = slug
        }

        public func duplicate() -> CategoryItems {
            let dict = self.dictionary!
            let copy = CategoryItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: DepartmentCategoryTree
         Used By: Catalog
     */

    class DepartmentCategoryTree: Codable {
        public var items: [CategoryItems]?

        public var department: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case department
        }

        public init(department: String?, items: [CategoryItems]?) {
            self.items = items

            self.department = department
        }

        public func duplicate() -> DepartmentCategoryTree {
            let dict = self.dictionary!
            let copy = DepartmentCategoryTree(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CategoryItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                department = try container.decode(String.self, forKey: .department)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(department, forKey: .department)
        }
    }

    /*
         Model: CategoryListingResponse
         Used By: Catalog
     */

    class CategoryListingResponse: Codable {
        public var departments: [DepartmentIdentifier]?

        public var data: [DepartmentCategoryTree]?

        public enum CodingKeys: String, CodingKey {
            case departments

            case data
        }

        public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
            self.departments = departments

            self.data = data
        }

        public func duplicate() -> CategoryListingResponse {
            let dict = self.dictionary!
            let copy = CategoryListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([DepartmentCategoryTree].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ApplicationProductListingResponse
         Used By: Catalog
     */

    class ApplicationProductListingResponse: Codable {
        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case sortOn = "sort_on"

            case filters

            case page
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
            self.items = items

            self.sortOn = sortOn

            self.filters = filters

            self.page = page
        }

        public func duplicate() -> ApplicationProductListingResponse {
            let dict = self.dictionary!
            let copy = ApplicationProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductDetail
         Used By: Catalog
     */

    class ProductDetail: Codable {
        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var itemCode: String?

        public var productOnlineDate: String?

        public var type: String?

        public var attributes: [String: Any]?

        public var uid: Int?

        public var teaserTag: [String: Any]?

        public var itemType: String?

        public var imageNature: String?

        public var rating: Double?

        public var similars: [String]?

        public var description: String?

        public var color: String?

        public var ratingCount: Int?

        public var highlights: [String]?

        public var promoMeta: [String: Any]?

        public var medias: [Media1]?

        public var hasVariant: Bool?

        public var shortDescription: String?

        public var tryouts: [String]?

        public var name: String?

        public var slug: String

        public var brand: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case groupedAttributes = "grouped_attributes"

            case itemCode = "item_code"

            case productOnlineDate = "product_online_date"

            case type

            case attributes

            case uid

            case teaserTag = "teaser_tag"

            case itemType = "item_type"

            case imageNature = "image_nature"

            case rating

            case similars

            case description

            case color

            case ratingCount = "rating_count"

            case highlights

            case promoMeta = "promo_meta"

            case medias

            case hasVariant = "has_variant"

            case shortDescription = "short_description"

            case tryouts

            case name

            case slug

            case brand
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.groupedAttributes = groupedAttributes

            self.itemCode = itemCode

            self.productOnlineDate = productOnlineDate

            self.type = type

            self.attributes = attributes

            self.uid = uid

            self.teaserTag = teaserTag

            self.itemType = itemType

            self.imageNature = imageNature

            self.rating = rating

            self.similars = similars

            self.description = description

            self.color = color

            self.ratingCount = ratingCount

            self.highlights = highlights

            self.promoMeta = promoMeta

            self.medias = medias

            self.hasVariant = hasVariant

            self.shortDescription = shortDescription

            self.tryouts = tryouts

            self.name = name

            self.slug = slug

            self.brand = brand
        }

        public func duplicate() -> ProductDetail {
            let dict = self.dictionary!
            let copy = ProductDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                description = try container.decode(String.self, forKey: .description)

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
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

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
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: ArticleQuery
         Used By: Catalog
     */

    class ArticleQuery: Codable {
        public var ignoredStores: [Int]?

        public var size: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case ignoredStores = "ignored_stores"

            case size

            case itemId = "item_id"
        }

        public init(ignoredStores: [Int]?, itemId: Int, size: String) {
            self.ignoredStores = ignoredStores

            self.size = size

            self.itemId = itemId
        }

        public func duplicate() -> ArticleQuery {
            let dict = self.dictionary!
            let copy = ArticleQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }

    /*
         Model: AssignStoreArticle
         Used By: Catalog
     */

    class AssignStoreArticle: Codable {
        public var groupId: String?

        public var query: ArticleQuery?

        public var meta: [String: Any]?

        public var quantity: Int?

        public var articleAssignment: ArticleAssignment?

        public enum CodingKeys: String, CodingKey {
            case groupId = "group_id"

            case query

            case meta

            case quantity

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: ArticleAssignment?, groupId: String?, meta: [String: Any]?, quantity: Int?, query: ArticleQuery?) {
            self.groupId = groupId

            self.query = query

            self.meta = meta

            self.quantity = quantity

            self.articleAssignment = articleAssignment
        }

        public func duplicate() -> AssignStoreArticle {
            let dict = self.dictionary!
            let copy = AssignStoreArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }

    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var companyId: Int?

        public var channelIdentifier: String?

        public var appId: String

        public var storeIds: [Int]?

        public var articles: [AssignStoreArticle]

        public var pincode: String

        public var channelType: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case channelIdentifier = "channel_identifier"

            case appId = "app_id"

            case storeIds = "store_ids"

            case articles

            case pincode

            case channelType = "channel_type"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String?, channelType: String?, companyId: Int?, pincode: String, storeIds: [Int]?) {
            self.companyId = companyId

            self.channelIdentifier = channelIdentifier

            self.appId = appId

            self.storeIds = storeIds

            self.articles = articles

            self.pincode = pincode

            self.channelType = channelType
        }

        public func duplicate() -> AssignStore {
            let dict = self.dictionary!
            let copy = AssignStore(dictionary: dict)!
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
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(channelType, forKey: .channelType)
        }
    }

    /*
         Model: ArticleAssignment1
         Used By: Catalog
     */

    class ArticleAssignment1: Codable {
        public var strategy: String?

        public var level: String?

        public enum CodingKeys: String, CodingKey {
            case strategy

            case level
        }

        public init(level: String?, strategy: String?) {
            self.strategy = strategy

            self.level = level
        }

        public func duplicate() -> ArticleAssignment1 {
            let dict = self.dictionary!
            let copy = ArticleAssignment1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategy, forKey: .strategy)

            try? container.encodeIfPresent(level, forKey: .level)
        }
    }

    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var companyId: Int?

        public var groupId: String?

        public var index: Int?

        public var itemId: Int

        public var status: Bool

        public var priceEffective: Int?

        public var storePincode: Int?

        public var meta: [String: Any]?

        public var priceMarked: Int?

        public var sCity: String?

        public var storeId: Int?

        public var size: String

        public var quantity: Int

        public var strategyWiseListing: [[String: Any]]?

        public var id: String?

        public var uid: String?

        public var articleAssignment: ArticleAssignment1

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case groupId = "group_id"

            case index

            case itemId = "item_id"

            case status

            case priceEffective = "price_effective"

            case storePincode = "store_pincode"

            case meta

            case priceMarked = "price_marked"

            case sCity = "s_city"

            case storeId = "store_id"

            case size

            case quantity

            case strategyWiseListing = "strategy_wise_listing"

            case id = "_id"

            case uid

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int?, groupId: String?, index: Int?, itemId: Int, meta: [String: Any]?, priceEffective: Int?, priceMarked: Int?, quantity: Int, size: String, status: Bool, storeId: Int?, storePincode: Int?, strategyWiseListing: [[String: Any]]?, sCity: String?, uid: String?, id: String?) {
            self.companyId = companyId

            self.groupId = groupId

            self.index = index

            self.itemId = itemId

            self.status = status

            self.priceEffective = priceEffective

            self.storePincode = storePincode

            self.meta = meta

            self.priceMarked = priceMarked

            self.sCity = sCity

            self.storeId = storeId

            self.size = size

            self.quantity = quantity

            self.strategyWiseListing = strategyWiseListing

            self.id = id

            self.uid = uid

            self.articleAssignment = articleAssignment
        }

        public func duplicate() -> StoreAssignResponse {
            let dict = self.dictionary!
            let copy = StoreAssignResponse(dictionary: dict)!
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
                groupId = try container.decode(String.self, forKey: .groupId)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

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
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

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
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }

    /*
         Model: InvoiceCredSerializer
         Used By: Catalog
     */

    class InvoiceCredSerializer: Codable {
        public var enabled: Bool?

        public var password: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case password

            case username
        }

        public init(enabled: Bool?, password: String?, username: String?) {
            self.enabled = enabled

            self.password = password

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
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

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

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(password, forKey: .password)

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
         Model: UserSerializer1
         Used By: Catalog
     */

    class UserSerializer1: Codable {
        public var userId: String?

        public var contact: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case contact

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.contact = contact

            self.username = username
        }

        public func duplicate() -> UserSerializer1 {
            let dict = self.dictionary!
            let copy = UserSerializer1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: GetAddressSerializer
         Used By: Catalog
     */

    class GetAddressSerializer: Codable {
        public var addressType: String?

        public var country: String?

        public var address1: String?

        public var landmark: String?

        public var countryCode: String?

        public var latitude: Double?

        public var address2: String?

        public var state: String?

        public var pincode: Int?

        public var city: String?

        public var longitude: Double?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case country

            case address1

            case landmark

            case countryCode = "country_code"

            case latitude

            case address2

            case state

            case pincode

            case city

            case longitude
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            self.addressType = addressType

            self.country = country

            self.address1 = address1

            self.landmark = landmark

            self.countryCode = countryCode

            self.latitude = latitude

            self.address2 = address2

            self.state = state

            self.pincode = pincode

            self.city = city

            self.longitude = longitude
        }

        public func duplicate() -> GetAddressSerializer {
            let dict = self.dictionary!
            let copy = GetAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

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
                address1 = try container.decode(String.self, forKey: .address1)

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
                address2 = try container.decode(String.self, forKey: .address2)

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
                pincode = try container.decode(Int.self, forKey: .pincode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }

    /*
         Model: GetCompanySerializer
         Used By: Catalog
     */

    class GetCompanySerializer: Codable {
        public var createdBy: UserSerializer1?

        public var modifiedOn: String?

        public var businessType: String?

        public var verifiedOn: String?

        public var modifiedBy: UserSerializer1?

        public var createdOn: String?

        public var companyType: String?

        public var addresses: [GetAddressSerializer]?

        public var verifiedBy: UserSerializer1?

        public var stage: String?

        public var name: String?

        public var uid: Int?

        public var rejectReason: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case businessType = "business_type"

            case verifiedOn = "verified_on"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case companyType = "company_type"

            case addresses

            case verifiedBy = "verified_by"

            case stage

            case name

            case uid

            case rejectReason = "reject_reason"
        }

        public init(addresses: [GetAddressSerializer]?, businessType: String?, companyType: String?, createdBy: UserSerializer1?, createdOn: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?) {
            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.businessType = businessType

            self.verifiedOn = verifiedOn

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.companyType = companyType

            self.addresses = addresses

            self.verifiedBy = verifiedBy

            self.stage = stage

            self.name = name

            self.uid = uid

            self.rejectReason = rejectReason
        }

        public func duplicate() -> GetCompanySerializer {
            let dict = self.dictionary!
            let copy = GetCompanySerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)

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
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

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

            do {
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        }
    }

    /*
         Model: LocationTimingSerializer
         Used By: Catalog
     */

    class LocationTimingSerializer: Codable {
        public var minute: Int?

        public var hour: Int?

        public enum CodingKeys: String, CodingKey {
            case minute

            case hour
        }

        public init(hour: Int?, minute: Int?) {
            self.minute = minute

            self.hour = hour
        }

        public func duplicate() -> LocationTimingSerializer {
            let dict = self.dictionary!
            let copy = LocationTimingSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minute = try container.decode(Int.self, forKey: .minute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hour = try container.decode(Int.self, forKey: .hour)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minute, forKey: .minute)

            try? container.encodeIfPresent(hour, forKey: .hour)
        }
    }

    /*
         Model: LocationDayWiseSerializer
         Used By: Catalog
     */

    class LocationDayWiseSerializer: Codable {
        public var weekday: String

        public var closing: LocationTimingSerializer?

        public var open: Bool

        public var opening: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case weekday

            case closing

            case open

            case opening
        }

        public init(closing: LocationTimingSerializer?, open: Bool, opening: LocationTimingSerializer?, weekday: String) {
            self.weekday = weekday

            self.closing = closing

            self.open = open

            self.opening = opening
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
                closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            open = try container.decode(Bool.self, forKey: .open)

            do {
                opening = try container.decode(LocationTimingSerializer.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }

    /*
         Model: LocationIntegrationType
         Used By: Catalog
     */

    class LocationIntegrationType: Codable {
        public var order: String?

        public var inventory: String?

        public enum CodingKeys: String, CodingKey {
            case order

            case inventory
        }

        public init(inventory: String?, order: String?) {
            self.order = order

            self.inventory = inventory
        }

        public func duplicate() -> LocationIntegrationType {
            let dict = self.dictionary!
            let copy = LocationIntegrationType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(String.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(String.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(inventory, forKey: .inventory)
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
        public var mobileNo: SellerPhoneNumber

        public var name: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case mobileNo = "mobile_no"

            case name

            case email
        }

        public init(email: String?, mobileNo: SellerPhoneNumber, name: String?) {
            self.mobileNo = mobileNo

            self.name = name

            self.email = email
        }

        public func duplicate() -> LocationManagerSerializer {
            let dict = self.dictionary!
            let copy = LocationManagerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

            do {
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: UserSerializer2
         Used By: Catalog
     */

    class UserSerializer2: Codable {
        public var userId: String?

        public var contact: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case contact

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.contact = contact

            self.username = username
        }

        public func duplicate() -> UserSerializer2 {
            let dict = self.dictionary!
            let copy = UserSerializer2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var value: String

        public var url: String?

        public var type: String

        public var verified: Bool?

        public var legalName: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case url

            case type

            case verified

            case legalName = "legal_name"
        }

        public init(legalName: String?, type: String, url: String?, value: String, verified: Bool?) {
            self.value = value

            self.url = url

            self.type = type

            self.verified = verified

            self.legalName = legalName
        }

        public func duplicate() -> Document {
            let dict = self.dictionary!
            let copy = Document(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)
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
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var gstCredentials: InvoiceDetailsSerializer?

        public var verifiedOn: String?

        public var company: GetCompanySerializer?

        public var timing: [LocationDayWiseSerializer]?

        public var integrationType: LocationIntegrationType?

        public var manager: LocationManagerSerializer?

        public var verifiedBy: UserSerializer2?

        public var customJson: [String: Any]?

        public var stage: String?

        public var uid: Int?

        public var createdBy: UserSerializer2?

        public var modifiedOn: String?

        public var documents: [Document]?

        public var notificationEmails: [String]?

        public var storeType: String?

        public var phoneNumber: String

        public var warnings: [String: Any]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var code: String

        public var displayName: String

        public var modifiedBy: UserSerializer2?

        public var createdOn: String?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var name: String

        public var address: GetAddressSerializer

        public enum CodingKeys: String, CodingKey {
            case gstCredentials = "gst_credentials"

            case verifiedOn = "verified_on"

            case company

            case timing

            case integrationType = "integration_type"

            case manager

            case verifiedBy = "verified_by"

            case customJson = "_custom_json"

            case stage

            case uid

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case documents

            case notificationEmails = "notification_emails"

            case storeType = "store_type"

            case phoneNumber = "phone_number"

            case warnings

            case contactNumbers = "contact_numbers"

            case code

            case displayName = "display_name"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case productReturnConfig = "product_return_config"

            case name

            case address
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer?, contactNumbers: [SellerPhoneNumber]?, createdBy: UserSerializer2?, createdOn: String?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, integrationType: LocationIntegrationType?, manager: LocationManagerSerializer?, modifiedBy: UserSerializer2?, modifiedOn: String?, name: String, notificationEmails: [String]?, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, verifiedBy: UserSerializer2?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            self.gstCredentials = gstCredentials

            self.verifiedOn = verifiedOn

            self.company = company

            self.timing = timing

            self.integrationType = integrationType

            self.manager = manager

            self.verifiedBy = verifiedBy

            self.customJson = customJson

            self.stage = stage

            self.uid = uid

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.documents = documents

            self.notificationEmails = notificationEmails

            self.storeType = storeType

            self.phoneNumber = phoneNumber

            self.warnings = warnings

            self.contactNumbers = contactNumbers

            self.code = code

            self.displayName = displayName

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.productReturnConfig = productReturnConfig

            self.name = name

            self.address = address
        }

        public func duplicate() -> GetLocationSerializer {
            let dict = self.dictionary!
            let copy = GetLocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

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
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                uid = try container.decode(Int.self, forKey: .uid)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([Document].self, forKey: .documents)

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
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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

            code = try container.decode(String.self, forKey: .code)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                modifiedBy = try container.decode(UserSerializer2.self, forKey: .modifiedBy)

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
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: LocationListSerializer
         Used By: Catalog
     */

    class LocationListSerializer: Codable {
        public var items: [GetLocationSerializer]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [GetLocationSerializer]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> LocationListSerializer {
            let dict = self.dictionary!
            let copy = LocationListSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetLocationSerializer].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

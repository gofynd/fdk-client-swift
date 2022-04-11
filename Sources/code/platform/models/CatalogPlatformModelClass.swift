import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetSearchWordsData
         Used By: Catalog
     */

    class GetSearchWordsData: Codable {
        public var result: [String: Any]?

        public var customJson: [String: Any]?

        public var words: [String]?

        public var appId: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case result

            case customJson = "_custom_json"

            case words

            case appId = "app_id"

            case uid
        }

        public init(appId: String?, result: [String: Any]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.result = result

            self.customJson = customJson

            self.words = words

            self.appId = appId

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
         Model: ErrorResponse
         Used By: Catalog
     */

    class ErrorResponse: Codable {
        public var message: String?

        public var code: String?

        public var status: Int?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case status

            case meta
        }

        public init(code: String?, message: String?, meta: [String: Any]?, status: Int?) {
            self.message = message

            self.code = code

            self.status = status

            self.meta = meta
        }

        public func duplicate() -> ErrorResponse {
            let dict = self.dictionary!
            let copy = ErrorResponse(dictionary: dict)!
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

            do {
                code = try container.decode(String.self, forKey: .code)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)
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
        public var isActive: Bool?

        public var result: SearchKeywordResult

        public var customJson: [String: Any]?

        public var words: [String]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case result

            case customJson = "_custom_json"

            case words

            case appId = "app_id"
        }

        public init(appId: String?, isActive: Bool?, result: SearchKeywordResult, words: [String]?, customJson: [String: Any]?) {
            self.isActive = isActive

            self.result = result

            self.customJson = customJson

            self.words = words

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

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
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
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
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var customJson: [String: Any]?

        public var words: [String]?

        public var results: [[String: Any]]?

        public var appId: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case words

            case results

            case appId = "app_id"

            case uid
        }

        public init(appId: String?, results: [[String: Any]]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.words = words

            self.results = results

            self.appId = appId

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

            do {
                appId = try container.decode(String.self, forKey: .appId)

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

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)

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
         Model: AutocompletePageAction
         Used By: Catalog
     */

    class AutocompletePageAction: Codable {
        public var query: [String: Any]?

        public var params: [String: Any]?

        public var url: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case params

            case url

            case type
        }

        public init(params: [String: Any]?, query: [String: Any]?, type: String?, url: String?) {
            self.query = query

            self.params = params

            self.url = url

            self.type = type
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
                params = try container.decode([String: Any].self, forKey: .params)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)
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
         Model: AutocompleteResult
         Used By: Catalog
     */

    class AutocompleteResult: Codable {
        public var display: String?

        public var customJson: [String: Any]?

        public var action: AutocompleteAction?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case display

            case customJson = "_custom_json"

            case action

            case logo
        }

        public init(action: AutocompleteAction?, display: String?, logo: Media?, customJson: [String: Any]?) {
            self.display = display

            self.customJson = customJson

            self.action = action

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: CreateAutocompleteKeyword
         Used By: Catalog
     */

    class CreateAutocompleteKeyword: Codable {
        public var isActive: Bool?

        public var customJson: [String: Any]?

        public var words: [String]?

        public var results: [AutocompleteResult]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case customJson = "_custom_json"

            case words

            case results

            case appId = "app_id"
        }

        public init(appId: String?, isActive: Bool?, results: [AutocompleteResult]?, words: [String]?, customJson: [String: Any]?) {
            self.isActive = isActive

            self.customJson = customJson

            self.words = words

            self.results = results

            self.appId = appId
        }

        public func duplicate() -> CreateAutocompleteKeyword {
            let dict = self.dictionary!
            let copy = CreateAutocompleteKeyword(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                words = try container.decode([String].self, forKey: .words)

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

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: CreateAutocompleteWordsResponse
         Used By: Catalog
     */

    class CreateAutocompleteWordsResponse: Codable {
        public var words: [String]?

        public var customJson: [String: Any]?

        public var results: [[String: Any]]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case words

            case customJson = "_custom_json"

            case results

            case appId = "app_id"
        }

        public init(appId: String?, results: [[String: Any]]?, words: [String]?, customJson: [String: Any]?) {
            self.words = words

            self.customJson = customJson

            self.results = results

            self.appId = appId
        }

        public func duplicate() -> CreateAutocompleteWordsResponse {
            let dict = self.dictionary!
            let copy = CreateAutocompleteWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var productUid: Int

        public var minQuantity: Int

        public var autoSelect: Bool?

        public var maxQuantity: Int

        public var autoAddToCart: Bool?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case productUid = "product_uid"

            case minQuantity = "min_quantity"

            case autoSelect = "auto_select"

            case maxQuantity = "max_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.productUid = productUid

            self.minQuantity = minQuantity

            self.autoSelect = autoSelect

            self.maxQuantity = maxQuantity

            self.autoAddToCart = autoAddToCart

            self.allowRemove = allowRemove
        }

        public func duplicate() -> ProductBundleItem {
            let dict = self.dictionary!
            let copy = ProductBundleItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            productUid = try container.decode(Int.self, forKey: .productUid)

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }

    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var sameStoreAssignment: Bool?

        public var slug: String

        public var modifiedOn: String?

        public var meta: [String: Any]?

        public var isActive: Bool

        public var name: String

        public var choice: String

        public var logo: String?

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var pageVisibility: [String]?

        public var createdOn: String?

        public var products: [ProductBundleItem]

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case slug

            case modifiedOn = "modified_on"

            case meta

            case isActive = "is_active"

            case name

            case choice

            case logo

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case pageVisibility = "page_visibility"

            case createdOn = "created_on"

            case products
        }

        public init(choice: String, createdBy: [String: Any]?, createdOn: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.sameStoreAssignment = sameStoreAssignment

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.meta = meta

            self.isActive = isActive

            self.name = name

            self.choice = choice

            self.logo = logo

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.pageVisibility = pageVisibility

            self.createdOn = createdOn

            self.products = products
        }

        public func duplicate() -> ProductBundleRequest {
            let dict = self.dictionary!
            let copy = ProductBundleRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }

    /*
         Model: GetProductBundleCreateResponse
         Used By: Catalog
     */

    class GetProductBundleCreateResponse: Codable {
        public var sameStoreAssignment: Bool?

        public var slug: String

        public var modifiedOn: String?

        public var companyId: Int?

        public var meta: [String: Any]?

        public var isActive: Bool

        public var id: String?

        public var name: String

        public var choice: String

        public var logo: String?

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var pageVisibility: [String]?

        public var createdOn: String?

        public var products: [ProductBundleItem]

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case slug

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case meta

            case isActive = "is_active"

            case id

            case name

            case choice

            case logo

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case pageVisibility = "page_visibility"

            case createdOn = "created_on"

            case products
        }

        public init(choice: String, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, id: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.sameStoreAssignment = sameStoreAssignment

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.meta = meta

            self.isActive = isActive

            self.id = id

            self.name = name

            self.choice = choice

            self.logo = logo

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.pageVisibility = pageVisibility

            self.createdOn = createdOn

            self.products = products
        }

        public func duplicate() -> GetProductBundleCreateResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleCreateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(products, forKey: .products)
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
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var images: [String]?

        public var itemCode: String?

        public var slug: String?

        public var quantity: Int?

        public var identifier: [String: Any]?

        public var shortDescription: String?

        public var countryOfOrigin: String?

        public var attributes: [String: Any]?

        public var price: [String: Any]?

        public var name: String?

        public var sizes: [String]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case images

            case itemCode = "item_code"

            case slug

            case quantity

            case identifier

            case shortDescription = "short_description"

            case countryOfOrigin = "country_of_origin"

            case attributes

            case price

            case name

            case sizes

            case uid
        }

        public init(attributes: [String: Any]?, countryOfOrigin: String?, identifier: [String: Any]?, images: [String]?, itemCode: String?, name: String?, price: [String: Any]?, quantity: Int?, shortDescription: String?, sizes: [String]?, slug: String?, uid: Int?) {
            self.images = images

            self.itemCode = itemCode

            self.slug = slug

            self.quantity = quantity

            self.identifier = identifier

            self.shortDescription = shortDescription

            self.countryOfOrigin = countryOfOrigin

            self.attributes = attributes

            self.price = price

            self.name = name

            self.sizes = sizes

            self.uid = uid
        }

        public func duplicate() -> LimitedProductData {
            let dict = self.dictionary!
            let copy = LimitedProductData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
                name = try container.decode(String.self, forKey: .name)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: Price
         Used By: Catalog
     */

    class Price: Codable {
        public var minEffective: Double?

        public var minMarked: Double?

        public var maxMarked: Double?

        public var currency: String?

        public var maxEffective: Double?

        public enum CodingKeys: String, CodingKey {
            case minEffective = "min_effective"

            case minMarked = "min_marked"

            case maxMarked = "max_marked"

            case currency

            case maxEffective = "max_effective"
        }

        public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
            self.minEffective = minEffective

            self.minMarked = minMarked

            self.maxMarked = maxMarked

            self.currency = currency

            self.maxEffective = maxEffective
        }

        public func duplicate() -> Price {
            let dict = self.dictionary!
            let copy = Price(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minEffective = try container.decode(Double.self, forKey: .minEffective)

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
                maxMarked = try container.decode(Double.self, forKey: .maxMarked)

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
                maxEffective = try container.decode(Double.self, forKey: .maxEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)
        }
    }

    /*
         Model: Size
         Used By: Catalog
     */

    class Size: Codable {
        public var display: String?

        public var isAvailable: Bool?

        public var value: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case display

            case isAvailable = "is_available"

            case value

            case quantity
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.display = display

            self.isAvailable = isAvailable

            self.value = value

            self.quantity = quantity
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

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }

    /*
         Model: GetProducts
         Used By: Catalog
     */

    class GetProducts: Codable {
        public var productUid: Int?

        public var productDetails: LimitedProductData?

        public var minQuantity: Int?

        public var autoSelect: Bool?

        public var price: Price?

        public var maxQuantity: Int?

        public var autoAddToCart: Bool?

        public var allowRemove: Bool?

        public var sizes: [Size]?

        public enum CodingKeys: String, CodingKey {
            case productUid = "product_uid"

            case productDetails = "product_details"

            case minQuantity = "min_quantity"

            case autoSelect = "auto_select"

            case price

            case maxQuantity = "max_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case allowRemove = "allow_remove"

            case sizes
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price?, productDetails: LimitedProductData?, productUid: Int?, sizes: [Size]?) {
            self.productUid = productUid

            self.productDetails = productDetails

            self.minQuantity = minQuantity

            self.autoSelect = autoSelect

            self.price = price

            self.maxQuantity = maxQuantity

            self.autoAddToCart = autoAddToCart

            self.allowRemove = allowRemove

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
                productUid = try container.decode(Int.self, forKey: .productUid)

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
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

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
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

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
                sizes = try container.decode([Size].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: GetProductBundleResponse
         Used By: Catalog
     */

    class GetProductBundleResponse: Codable {
        public var sameStoreAssignment: Bool?

        public var companyId: Int?

        public var slug: String?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var name: String?

        public var choice: String?

        public var logo: String?

        public var pageVisibility: [String]?

        public var products: [GetProducts]?

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case companyId = "company_id"

            case slug

            case meta

            case isActive = "is_active"

            case name

            case choice

            case logo

            case pageVisibility = "page_visibility"

            case products
        }

        public init(choice: String?, companyId: Int?, isActive: Bool?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [GetProducts]?, sameStoreAssignment: Bool?, slug: String?) {
            self.sameStoreAssignment = sameStoreAssignment

            self.companyId = companyId

            self.slug = slug

            self.meta = meta

            self.isActive = isActive

            self.name = name

            self.choice = choice

            self.logo = logo

            self.pageVisibility = pageVisibility

            self.products = products
        }

        public func duplicate() -> GetProductBundleResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                choice = try container.decode(String.self, forKey: .choice)

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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }

    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var sameStoreAssignment: Bool?

        public var slug: String

        public var modifiedOn: String?

        public var meta: [String: Any]?

        public var isActive: Bool

        public var name: String

        public var choice: String

        public var logo: String?

        public var modifiedBy: [String: Any]?

        public var pageVisibility: [String]?

        public var products: [ProductBundleItem]

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case slug

            case modifiedOn = "modified_on"

            case meta

            case isActive = "is_active"

            case name

            case choice

            case logo

            case modifiedBy = "modified_by"

            case pageVisibility = "page_visibility"

            case products
        }

        public init(choice: String, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.sameStoreAssignment = sameStoreAssignment

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.meta = meta

            self.isActive = isActive

            self.name = name

            self.choice = choice

            self.logo = logo

            self.modifiedBy = modifiedBy

            self.pageVisibility = pageVisibility

            self.products = products
        }

        public func duplicate() -> ProductBundleUpdateRequest {
            let dict = self.dictionary!
            let copy = ProductBundleUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }

    /*
         Model: Meta
         Used By: Catalog
     */

    class Meta: Codable {
        public var headers: [String: Any]?

        public var unit: String?

        public var values: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case headers

            case unit

            case values
        }

        public init(headers: [String: Any]?, unit: String?, values: [[String: Any]]?) {
            self.headers = headers

            self.unit = unit

            self.values = values
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(values, forKey: .values)
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
        public var modifiedOn: String?

        public var companyId: Int?

        public var tag: String?

        public var title: String

        public var subtitle: String?

        public var description: String?

        public var brandId: Int?

        public var createdOn: String?

        public var id: String?

        public var name: String

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var image: String?

        public var active: Bool?

        public var guide: Guide?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case tag

            case title

            case subtitle

            case description

            case brandId = "brand_id"

            case createdOn = "created_on"

            case id

            case name

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case image

            case active

            case guide
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, description: String?, guide: Guide?, id: String?, image: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, subtitle: String?, tag: String?, title: String) {
            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.tag = tag

            self.title = title

            self.subtitle = subtitle

            self.description = description

            self.brandId = brandId

            self.createdOn = createdOn

            self.id = id

            self.name = name

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.image = image

            self.active = active

            self.guide = guide
        }

        public func duplicate() -> ValidateSizeGuide {
            let dict = self.dictionary!
            let copy = ValidateSizeGuide(dictionary: dict)!
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

            title = try container.decode(String.self, forKey: .title)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                active = try container.decode(Bool.self, forKey: .active)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(guide, forKey: .guide)
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
        public var modifiedOn: String?

        public var companyId: Int?

        public var tag: String?

        public var title: String?

        public var subtitle: String?

        public var brandId: Int?

        public var id: String?

        public var name: String?

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var active: Bool?

        public var createdOn: String?

        public var guide: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case tag

            case title

            case subtitle

            case brandId = "brand_id"

            case id

            case name

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case active

            case createdOn = "created_on"

            case guide
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, guide: [String: Any]?, id: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, subtitle: String?, tag: String?, title: String?) {
            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.tag = tag

            self.title = title

            self.subtitle = subtitle

            self.brandId = brandId

            self.id = id

            self.name = name

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.active = active

            self.createdOn = createdOn

            self.guide = guide
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

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(guide, forKey: .guide)
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
         Model: GetCatalogConfigurationDetailsProduct
         Used By: Catalog
     */

    class GetCatalogConfigurationDetailsProduct: Codable {
        public var detail: [String: Any]?

        public var variant: [String: Any]?

        public var similar: [String: Any]?

        public var compare: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case detail

            case variant

            case similar

            case compare
        }

        public init(compare: [String: Any]?, detail: [String: Any]?, similar: [String: Any]?, variant: [String: Any]?) {
            self.detail = detail

            self.variant = variant

            self.similar = similar

            self.compare = compare
        }

        public func duplicate() -> GetCatalogConfigurationDetailsProduct {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationDetailsProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                detail = try container.decode([String: Any].self, forKey: .detail)

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
                compare = try container.decode([String: Any].self, forKey: .compare)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(detail, forKey: .detail)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(compare, forKey: .compare)
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
        public var filterTypes: [String]?

        public var display: String?

        public var units: [[String: Any]]?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case filterTypes = "filter_types"

            case display

            case units

            case key
        }

        public init(display: String?, filterTypes: [String]?, key: String?, units: [[String: Any]]?) {
            self.filterTypes = filterTypes

            self.display = display

            self.units = units

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
                filterTypes = try container.decode([String].self, forKey: .filterTypes)

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
                units = try container.decode([[String: Any]].self, forKey: .units)

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

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(units, forKey: .units)

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
         Model: GetCatalogConfigurationMetaData
         Used By: Catalog
     */

    class GetCatalogConfigurationMetaData: Codable {
        public var product: GetCatalogConfigurationDetailsProduct?

        public var listing: MetaDataListingResponse?

        public enum CodingKeys: String, CodingKey {
            case product

            case listing
        }

        public init(listing: MetaDataListingResponse?, product: GetCatalogConfigurationDetailsProduct?) {
            self.product = product

            self.listing = listing
        }

        public func duplicate() -> GetCatalogConfigurationMetaData {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationMetaData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listing = try container.decode(MetaDataListingResponse.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(listing, forKey: .listing)
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
        public var key: String

        public var isActive: Bool

        public var priority: Int

        public var name: String

        public var logo: String?

        public var size: ProductSize

        public var displayType: String

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case priority

            case name

            case logo

            case size

            case displayType = "display_type"
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String?, name: String, priority: Int, size: ProductSize) {
            self.key = key

            self.isActive = isActive

            self.priority = priority

            self.name = name

            self.logo = logo

            self.size = size

            self.displayType = displayType
        }

        public func duplicate() -> ConfigurationProductVariantConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductVariantConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(ProductSize.self, forKey: .size)

            displayType = try container.decode(String.self, forKey: .displayType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(size, forKey: .size)

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
        public var key: String

        public var isActive: Bool

        public var priority: Int

        public var title: String?

        public var logo: String?

        public var size: ProductSize?

        public var subtitle: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case priority

            case title

            case logo

            case size

            case subtitle
        }

        public init(isActive: Bool, key: String, logo: String?, priority: Int, size: ProductSize?, subtitle: String?, title: String?) {
            self.key = key

            self.isActive = isActive

            self.priority = priority

            self.title = title

            self.logo = logo

            self.size = size

            self.subtitle = subtitle
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

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                title = try container.decode(String.self, forKey: .title)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
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
        public var start: Double?

        public var display: String?

        public var end: Double?

        public enum CodingKeys: String, CodingKey {
            case start

            case display

            case end
        }

        public init(display: String?, end: Double?, start: Double?) {
            self.start = start

            self.display = display

            self.end = end
        }

        public func duplicate() -> ConfigurationBucketPoints {
            let dict = self.dictionary!
            let copy = ConfigurationBucketPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                start = try container.decode(Double.self, forKey: .start)

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
                end = try container.decode(Double.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }

    /*
         Model: ConfigurationListingFilterValue
         Used By: Catalog
     */

    class ConfigurationListingFilterValue: Codable {
        public var bucketPoints: [ConfigurationBucketPoints]?

        public var value: String?

        public var sort: String?

        public var condition: String?

        public var map: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case bucketPoints = "bucket_points"

            case value

            case sort

            case condition

            case map
        }

        public init(bucketPoints: [ConfigurationBucketPoints]?, condition: String?, map: [String: Any]?, sort: String?, value: String?) {
            self.bucketPoints = bucketPoints

            self.value = value

            self.sort = sort

            self.condition = condition

            self.map = map
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
                value = try container.decode(String.self, forKey: .value)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(map, forKey: .map)
        }
    }

    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var key: String

        public var valueConfig: ConfigurationListingFilterValue?

        public var isActive: Bool

        public var priority: Int

        public var name: String?

        public var logo: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case key

            case valueConfig = "value_config"

            case isActive = "is_active"

            case priority

            case name

            case logo

            case type
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue?) {
            self.key = key

            self.valueConfig = valueConfig

            self.isActive = isActive

            self.priority = priority

            self.name = name

            self.logo = logo

            self.type = type
        }

        public func duplicate() -> ConfigurationListingFilterConfig {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(type, forKey: .type)
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
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var product: ConfigurationProduct?

        public var configId: String?

        public var configType: String

        public var listing: ConfigurationListing?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case product

            case configId = "config_id"

            case configType = "config_type"

            case listing

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.product = product

            self.configId = configId

            self.configType = configType

            self.listing = listing

            self.appId = appId
        }

        public func duplicate() -> AppConfiguration {
            let dict = self.dictionary!
            let copy = AppConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            configType = try container.decode(String.self, forKey: .configType)

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var product: ConfigurationProduct?

        public var configId: String?

        public var configType: String

        public var id: String?

        public var listing: ConfigurationListing?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case product

            case configId = "config_id"

            case configType = "config_type"

            case id

            case listing

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.product = product

            self.configId = configId

            self.configType = configType

            self.id = id

            self.listing = listing

            self.appId = appId
        }

        public func duplicate() -> AppCatalogConfiguration {
            let dict = self.dictionary!
            let copy = AppCatalogConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            configType = try container.decode(String.self, forKey: .configType)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: GetAppCatalogConfiguration
         Used By: Catalog
     */

    class GetAppCatalogConfiguration: Codable {
        public var isDefault: Bool?

        public var data: AppCatalogConfiguration?

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case data
        }

        public init(data: AppCatalogConfiguration?, isDefault: Bool?) {
            self.isDefault = isDefault

            self.data = data
        }

        public func duplicate() -> GetAppCatalogConfiguration {
            let dict = self.dictionary!
            let copy = GetAppCatalogConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(AppCatalogConfiguration.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(data, forKey: .data)
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
        public var product: GetCatalogConfigurationDetailsProduct?

        public var configId: String?

        public var configType: String

        public var id: String?

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case product

            case configId = "config_id"

            case configType = "config_type"

            case id

            case listing

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: GetCatalogConfigurationDetailsSchemaListing?, product: GetCatalogConfigurationDetailsProduct?) {
            self.product = product

            self.configId = configId

            self.configType = configType

            self.id = id

            self.listing = listing

            self.appId = appId
        }

        public func duplicate() -> EntityConfiguration {
            let dict = self.dictionary!
            let copy = EntityConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            configType = try container.decode(String.self, forKey: .configType)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: GetAppCatalogEntityConfiguration
         Used By: Catalog
     */

    class GetAppCatalogEntityConfiguration: Codable {
        public var isDefault: Bool?

        public var data: EntityConfiguration?

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case data
        }

        public init(data: EntityConfiguration?, isDefault: Bool?) {
            self.isDefault = isDefault

            self.data = data
        }

        public func duplicate() -> GetAppCatalogEntityConfiguration {
            let dict = self.dictionary!
            let copy = GetAppCatalogEntityConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(EntityConfiguration.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ProductSortOn
         Used By: Catalog
     */

    class ProductSortOn: Codable {
        public var isSelected: Bool?

        public var value: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case isSelected = "is_selected"

            case value

            case name
        }

        public init(isSelected: Bool?, name: String?, value: String?) {
            self.isSelected = isSelected

            self.value = value

            self.name = name
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */

    class ProductFiltersKey: Codable {
        public var kind: String?

        public var display: String

        public var name: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case kind

            case display

            case name

            case logo
        }

        public init(display: String, kind: String?, logo: String?, name: String) {
            self.kind = kind

            self.display = display

            self.name = name

            self.logo = logo
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

            display = try container.decode(String.self, forKey: .display)

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

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */

    class ProductFiltersValue: Codable {
        public var selectedMax: Int?

        public var display: String

        public var queryFormat: String?

        public var count: Int?

        public var selectedMin: Int?

        public var value: String

        public var max: Int?

        public var min: Int?

        public var currencyCode: String?

        public var displayFormat: String?

        public var isSelected: Bool

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case selectedMax = "selected_max"

            case display

            case queryFormat = "query_format"

            case count

            case selectedMin = "selected_min"

            case value

            case max

            case min

            case currencyCode = "currency_code"

            case displayFormat = "display_format"

            case isSelected = "is_selected"

            case currencySymbol = "currency_symbol"
        }

        public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String) {
            self.selectedMax = selectedMax

            self.display = display

            self.queryFormat = queryFormat

            self.count = count

            self.selectedMin = selectedMin

            self.value = value

            self.max = max

            self.min = min

            self.currencyCode = currencyCode

            self.displayFormat = displayFormat

            self.isSelected = isSelected

            self.currencySymbol = currencySymbol
        }

        public func duplicate() -> ProductFiltersValue {
            let dict = self.dictionary!
            let copy = ProductFiltersValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

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
                count = try container.decode(Int.self, forKey: .count)

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

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
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
         Model: CollectionBadge
         Used By: Catalog
     */

    class CollectionBadge: Codable {
        public var color: String?

        public var text: String?

        public enum CodingKeys: String, CodingKey {
            case color

            case text
        }

        public init(color: String?, text: String?) {
            self.color = color

            self.text = text
        }

        public func duplicate() -> CollectionBadge {
            let dict = self.dictionary!
            let copy = CollectionBadge(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }

    /*
         Model: CollectionImage
         Used By: Catalog
     */

    class CollectionImage: Codable {
        public var url: String

        public var aspectRatio: String

        public enum CodingKeys: String, CodingKey {
            case url

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String, url: String) {
            self.url = url

            self.aspectRatio = aspectRatio
        }

        public func duplicate() -> CollectionImage {
            let dict = self.dictionary!
            let copy = CollectionImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }

    /*
         Model: UserInfo
         Used By: Catalog
     */

    class UserInfo: Codable {
        public var userId: String?

        public var uid: String?

        public var username: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case uid

            case username

            case email
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.userId = userId

            self.uid = uid

            self.username = username

            self.email = email
        }

        public func duplicate() -> UserInfo {
            let dict = self.dictionary!
            let copy = UserInfo(dictionary: dict)!
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
                uid = try container.decode(String.self, forKey: .uid)

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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: CollectionBanner
         Used By: Catalog
     */

    class CollectionBanner: Codable {
        public var portrait: CollectionImage

        public var landscape: CollectionImage

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: CollectionImage, portrait: CollectionImage) {
            self.portrait = portrait

            self.landscape = landscape
        }

        public func duplicate() -> CollectionBanner {
            let dict = self.dictionary!
            let copy = CollectionBanner(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(CollectionImage.self, forKey: .portrait)

            landscape = try container.decode(CollectionImage.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
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
         Model: Schedule
         Used By: Catalog
     */

    class Schedule: Codable {
        public var start: String?

        public var cron: String?

        public var duration: Int?

        public var end: String?

        public enum CodingKeys: String, CodingKey {
            case start

            case cron

            case duration

            case end
        }

        public init(cron: String?, duration: Int?, end: String?, start: String?) {
            self.start = start

            self.cron = cron

            self.duration = duration

            self.end = end
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
                cron = try container.decode(String.self, forKey: .cron)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(cron, forKey: .cron)

            try? container.encode(duration, forKey: .duration)

            try? container.encode(end, forKey: .end)
        }
    }

    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var description: String?

        public var badge: CollectionBadge?

        public var logo: CollectionImage

        public var createdBy: UserInfo?

        public var allowFacets: Bool?

        public var published: Bool?

        public var banners: CollectionBanner

        public var sortOn: String?

        public var customJson: [String: Any]?

        public var seo: SeoDetail?

        public var type: String

        public var isVisible: Bool?

        public var localeLanguage: [String: Any]?

        public var schedule: Schedule?

        public var query: [String: Any]?

        public var isActive: Bool?

        public var visibleFacetsKeys: [String]?

        public var tags: [String]?

        public var allowSort: Bool?

        public var slug: String

        public var meta: [String: Any]?

        public var name: String

        public var modifiedBy: UserInfo?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case description

            case badge

            case logo

            case createdBy = "created_by"

            case allowFacets = "allow_facets"

            case published

            case banners

            case sortOn = "sort_on"

            case customJson = "_custom_json"

            case seo

            case type

            case isVisible = "is_visible"

            case localeLanguage = "_locale_language"

            case schedule = "_schedule"

            case query

            case isActive = "is_active"

            case visibleFacetsKeys = "visible_facets_keys"

            case tags

            case allowSort = "allow_sort"

            case slug

            case meta

            case name

            case modifiedBy = "modified_by"

            case appId = "app_id"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String, badge: CollectionBadge?, banners: CollectionBanner, createdBy: UserInfo?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage, meta: [String: Any]?, modifiedBy: UserInfo?, name: String, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String, sortOn: String?, tags: [String]?, type: String, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.description = description

            self.badge = badge

            self.logo = logo

            self.createdBy = createdBy

            self.allowFacets = allowFacets

            self.published = published

            self.banners = banners

            self.sortOn = sortOn

            self.customJson = customJson

            self.seo = seo

            self.type = type

            self.isVisible = isVisible

            self.localeLanguage = localeLanguage

            self.schedule = schedule

            self.query = query

            self.isActive = isActive

            self.visibleFacetsKeys = visibleFacetsKeys

            self.tags = tags

            self.allowSort = allowSort

            self.slug = slug

            self.meta = meta

            self.name = name

            self.modifiedBy = modifiedBy

            self.appId = appId
        }

        public func duplicate() -> CreateCollection {
            let dict = self.dictionary!
            let copy = CreateCollection(dictionary: dict)!
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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

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
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

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
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: BannerImage
         Used By: Catalog
     */

    class BannerImage: Codable {
        public var url: String?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String?, url: String?) {
            self.url = url

            self.aspectRatio = aspectRatio
        }

        public func duplicate() -> BannerImage {
            let dict = self.dictionary!
            let copy = BannerImage(dictionary: dict)!
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
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
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
        public var query: [String: Any]?

        public var allowSort: Bool?

        public var slug: String?

        public var allowFacets: Bool?

        public var banners: ImageUrls?

        public var isActive: Bool?

        public var tag: [String]?

        public var meta: [String: Any]?

        public var description: String?

        public var visibleFacetsKeys: [String]?

        public var cron: [String: Any]?

        public var badge: [String: Any]?

        public var logo: BannerImage?

        public var name: String?

        public var type: String?

        public var appId: String?

        public var schedule: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case query

            case allowSort = "allow_sort"

            case slug

            case allowFacets = "allow_facets"

            case banners

            case isActive = "is_active"

            case tag

            case meta

            case description

            case visibleFacetsKeys = "visible_facets_keys"

            case cron

            case badge

            case logo

            case name

            case type

            case appId = "app_id"

            case schedule = "_schedule"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: BannerImage?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.query = query

            self.allowSort = allowSort

            self.slug = slug

            self.allowFacets = allowFacets

            self.banners = banners

            self.isActive = isActive

            self.tag = tag

            self.meta = meta

            self.description = description

            self.visibleFacetsKeys = visibleFacetsKeys

            self.cron = cron

            self.badge = badge

            self.logo = logo

            self.name = name

            self.type = type

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                tag = try container.decode([String].self, forKey: .tag)

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
                description = try container.decode(String.self, forKey: .description)

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
                cron = try container.decode([String: Any].self, forKey: .cron)

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
                logo = try container.decode(BannerImage.self, forKey: .logo)

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
                type = try container.decode(String.self, forKey: .type)

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

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var meta: [String: Any]?

        public var url: String

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case url

            case type
        }

        public init(meta: [String: Any]?, type: String?, url: String) {
            self.meta = meta

            self.url = url

            self.type = type
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

            url = try container.decode(String.self, forKey: .url)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */

    class GetCollectionDetailNest: Codable {
        public var description: String?

        public var cron: [String: Any]?

        public var badge: [String: Any]?

        public var logo: Media1?

        public var allowFacets: Bool?

        public var banners: ImageUrls?

        public var tag: [String]?

        public var action: Action?

        public var type: String?

        public var schedule: [String: Any]?

        public var query: [String: Any]?

        public var isActive: Bool?

        public var visibleFacetsKeys: [String]?

        public var allowSort: Bool?

        public var slug: String?

        public var meta: [String: Any]?

        public var name: String?

        public var appId: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case cron

            case badge

            case logo

            case allowFacets = "allow_facets"

            case banners

            case tag

            case action

            case type

            case schedule = "_schedule"

            case query

            case isActive = "is_active"

            case visibleFacetsKeys = "visible_facets_keys"

            case allowSort = "allow_sort"

            case slug

            case meta

            case name

            case appId = "app_id"

            case uid
        }

        public init(action: Action?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.description = description

            self.cron = cron

            self.badge = badge

            self.logo = logo

            self.allowFacets = allowFacets

            self.banners = banners

            self.tag = tag

            self.action = action

            self.type = type

            self.schedule = schedule

            self.query = query

            self.isActive = isActive

            self.visibleFacetsKeys = visibleFacetsKeys

            self.allowSort = allowSort

            self.slug = slug

            self.meta = meta

            self.name = name

            self.appId = appId

            self.uid = uid
        }

        public func duplicate() -> GetCollectionDetailNest {
            let dict = self.dictionary!
            let copy = GetCollectionDetailNest(dictionary: dict)!
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
                cron = try container.decode([String: Any].self, forKey: .cron)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                tag = try container.decode([String].self, forKey: .tag)

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
                schedule = try container.decode([String: Any].self, forKey: .schedule)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
         Model: GetCollectionListingResponse
         Used By: Catalog
     */

    class GetCollectionListingResponse: Codable {
        public var page: Page?

        public var items: [GetCollectionDetailNest]?

        public var filters: CollectionListingFilter?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case filters
        }

        public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page?) {
            self.page = page

            self.items = items

            self.filters = filters
        }

        public func duplicate() -> GetCollectionListingResponse {
            let dict = self.dictionary!
            let copy = GetCollectionListingResponse(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }

    /*
         Model: CollectionDetailResponse
         Used By: Catalog
     */

    class CollectionDetailResponse: Codable {
        public var query: [String: Any]?

        public var allowSort: Bool?

        public var slug: String?

        public var allowFacets: Bool?

        public var banners: ImageUrls?

        public var isActive: Bool?

        public var tag: [String]?

        public var meta: [String: Any]?

        public var description: String?

        public var visibleFacetsKeys: [String]?

        public var cron: [String: Any]?

        public var badge: [String: Any]?

        public var logo: Media1?

        public var name: String?

        public var type: String?

        public var appId: String?

        public var schedule: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case query

            case allowSort = "allow_sort"

            case slug

            case allowFacets = "allow_facets"

            case banners

            case isActive = "is_active"

            case tag

            case meta

            case description

            case visibleFacetsKeys = "visible_facets_keys"

            case cron

            case badge

            case logo

            case name

            case type

            case appId = "app_id"

            case schedule = "_schedule"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.query = query

            self.allowSort = allowSort

            self.slug = slug

            self.allowFacets = allowFacets

            self.banners = banners

            self.isActive = isActive

            self.tag = tag

            self.meta = meta

            self.description = description

            self.visibleFacetsKeys = visibleFacetsKeys

            self.cron = cron

            self.badge = badge

            self.logo = logo

            self.name = name

            self.type = type

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                tag = try container.decode([String].self, forKey: .tag)

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
                description = try container.decode(String.self, forKey: .description)

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
                cron = try container.decode([String: Any].self, forKey: .cron)

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
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: UpdateCollection
         Used By: Catalog
     */

    class UpdateCollection: Codable {
        public var description: String?

        public var badge: CollectionBadge?

        public var logo: CollectionImage?

        public var allowFacets: Bool?

        public var published: Bool?

        public var banners: CollectionBanner?

        public var sortOn: String?

        public var customJson: [String: Any]?

        public var seo: SeoDetail?

        public var isVisible: Bool?

        public var localeLanguage: [String: Any]?

        public var schedule: Schedule?

        public var query: [String: Any]?

        public var isActive: Bool?

        public var visibleFacetsKeys: [String]?

        public var tags: [String]?

        public var allowSort: Bool?

        public var slug: String?

        public var meta: [String: Any]?

        public var name: String?

        public var modifiedBy: UserInfo?

        public enum CodingKeys: String, CodingKey {
            case description

            case badge

            case logo

            case allowFacets = "allow_facets"

            case published

            case banners

            case sortOn = "sort_on"

            case customJson = "_custom_json"

            case seo

            case isVisible = "is_visible"

            case localeLanguage = "_locale_language"

            case schedule = "_schedule"

            case query

            case isActive = "is_active"

            case visibleFacetsKeys = "visible_facets_keys"

            case tags

            case allowSort = "allow_sort"

            case slug

            case meta

            case name

            case modifiedBy = "modified_by"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, badge: CollectionBadge?, banners: CollectionBanner?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage?, meta: [String: Any]?, modifiedBy: UserInfo?, name: String?, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String?, sortOn: String?, tags: [String]?, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.description = description

            self.badge = badge

            self.logo = logo

            self.allowFacets = allowFacets

            self.published = published

            self.banners = banners

            self.sortOn = sortOn

            self.customJson = customJson

            self.seo = seo

            self.isVisible = isVisible

            self.localeLanguage = localeLanguage

            self.schedule = schedule

            self.query = query

            self.isActive = isActive

            self.visibleFacetsKeys = visibleFacetsKeys

            self.tags = tags

            self.allowSort = allowSort

            self.slug = slug

            self.meta = meta

            self.name = name

            self.modifiedBy = modifiedBy
        }

        public func duplicate() -> UpdateCollection {
            let dict = self.dictionary!
            let copy = UpdateCollection(dictionary: dict)!
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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                banners = try container.decode(CollectionBanner.self, forKey: .banners)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

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
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }

    /*
         Model: CollectionItemRequest
         Used By: Catalog
     */

    class CollectionItemRequest: Codable {
        public var pageNo: Int

        public var pageSize: Int

        public enum CodingKeys: String, CodingKey {
            case pageNo = "page_no"

            case pageSize = "page_size"
        }

        public init(pageNo: Int, pageSize: Int) {
            self.pageNo = pageNo

            self.pageSize = pageSize
        }

        public func duplicate() -> CollectionItemRequest {
            let dict = self.dictionary!
            let copy = CollectionItemRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
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
         Model: ProductBrand
         Used By: Catalog
     */

    class ProductBrand: Codable {
        public var action: Action?

        public var name: String?

        public var logo: Media1?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case name

            case logo

            case uid
        }

        public init(action: Action?, logo: Media1?, name: String?, uid: Int?) {
            self.action = action

            self.name = name

            self.logo = logo

            self.uid = uid
        }

        public func duplicate() -> ProductBrand {
            let dict = self.dictionary!
            let copy = ProductBrand(dictionary: dict)!
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
                name = try container.decode(String.self, forKey: .name)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var details: [ProductDetailAttribute]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case details

            case title
        }

        public init(details: [ProductDetailAttribute]?, title: String?) {
            self.details = details

            self.title = title
        }

        public func duplicate() -> ProductDetailGroupedAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailGroupedAttribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                details = try container.decode([ProductDetailAttribute].self, forKey: .details)

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

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var min: Double?

        public var max: Double?

        public var currencyCode: String?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case min

            case max

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
            self.min = min

            self.max = max

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol
        }

        public func duplicate() -> Price1 {
            let dict = self.dictionary!
            let copy = Price1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        }
    }

    /*
         Model: ProductListingPrice
         Used By: Catalog
     */

    class ProductListingPrice: Codable {
        public var marked: Price1?

        public var effective: Price1?

        public enum CodingKeys: String, CodingKey {
            case marked

            case effective
        }

        public init(effective: Price1?, marked: Price1?) {
            self.marked = marked

            self.effective = effective
        }

        public func duplicate() -> ProductListingPrice {
            let dict = self.dictionary!
            let copy = ProductListingPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marked = try container.decode(Price1.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Price1.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }

    /*
         Model: ProductListingDetail
         Used By: Catalog
     */

    class ProductListingDetail: Codable {
        public var shortDescription: String?

        public var attributes: [String: Any]?

        public var discount: String?

        public var description: String?

        public var teaserTag: [String: Any]?

        public var productOnlineDate: String?

        public var brand: ProductBrand?

        public var highlights: [String]?

        public var itemType: String?

        public var color: String?

        public var type: String?

        public var rating: Double?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var itemCode: String?

        public var sellable: Bool?

        public var tryouts: [String]?

        public var hasVariant: Bool?

        public var promoMeta: [String: Any]?

        public var imageNature: String?

        public var slug: String

        public var similars: [String]?

        public var medias: [Media1]?

        public var ratingCount: Int?

        public var price: ProductListingPrice?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case shortDescription = "short_description"

            case attributes

            case discount

            case description

            case teaserTag = "teaser_tag"

            case productOnlineDate = "product_online_date"

            case brand

            case highlights

            case itemType = "item_type"

            case color

            case type

            case rating

            case groupedAttributes = "grouped_attributes"

            case itemCode = "item_code"

            case sellable

            case tryouts

            case hasVariant = "has_variant"

            case promoMeta = "promo_meta"

            case imageNature = "image_nature"

            case slug

            case similars

            case medias

            case ratingCount = "rating_count"

            case price

            case name

            case uid
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.shortDescription = shortDescription

            self.attributes = attributes

            self.discount = discount

            self.description = description

            self.teaserTag = teaserTag

            self.productOnlineDate = productOnlineDate

            self.brand = brand

            self.highlights = highlights

            self.itemType = itemType

            self.color = color

            self.type = type

            self.rating = rating

            self.groupedAttributes = groupedAttributes

            self.itemCode = itemCode

            self.sellable = sellable

            self.tryouts = tryouts

            self.hasVariant = hasVariant

            self.promoMeta = promoMeta

            self.imageNature = imageNature

            self.slug = slug

            self.similars = similars

            self.medias = medias

            self.ratingCount = ratingCount

            self.price = price

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> ProductListingDetail {
            let dict = self.dictionary!
            let copy = ProductListingDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                discount = try container.decode(String.self, forKey: .discount)

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
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

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
                brand = try container.decode(ProductBrand.self, forKey: .brand)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                type = try container.decode(String.self, forKey: .type)

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
                sellable = try container.decode(Bool.self, forKey: .sellable)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                similars = try container.decode([String].self, forKey: .similars)

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
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

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

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: GetCollectionItemsResponse
         Used By: Catalog
     */

    class GetCollectionItemsResponse: Codable {
        public var page: Page?

        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?) {
            self.page = page

            self.items = items

            self.sortOn = sortOn

            self.filters = filters
        }

        public func duplicate() -> GetCollectionItemsResponse {
            let dict = self.dictionary!
            let copy = GetCollectionItemsResponse(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
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
        public var totalArticles: Int?

        public var articleFreshness: Int?

        public var availableArticles: Int?

        public var availableSizes: Int?

        public var name: String?

        public var totalSizes: Int?

        public enum CodingKeys: String, CodingKey {
            case totalArticles = "total_articles"

            case articleFreshness = "article_freshness"

            case availableArticles = "available_articles"

            case availableSizes = "available_sizes"

            case name

            case totalSizes = "total_sizes"
        }

        public init(articleFreshness: Int?, availableArticles: Int?, availableSizes: Int?, name: String?, totalArticles: Int?, totalSizes: Int?) {
            self.totalArticles = totalArticles

            self.articleFreshness = articleFreshness

            self.availableArticles = availableArticles

            self.availableSizes = availableSizes

            self.name = name

            self.totalSizes = totalSizes
        }

        public func duplicate() -> CatalogInsightBrand {
            let dict = self.dictionary!
            let copy = CatalogInsightBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalArticles = try container.decode(Int.self, forKey: .totalArticles)

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
                availableSizes = try container.decode(Int.self, forKey: .availableSizes)

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
                totalSizes = try container.decode(Int.self, forKey: .totalSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalArticles, forKey: .totalArticles)

            try? container.encodeIfPresent(articleFreshness, forKey: .articleFreshness)

            try? container.encodeIfPresent(availableArticles, forKey: .availableArticles)

            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(totalSizes, forKey: .totalSizes)
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
        public var brandDistribution: CatalogInsightBrand?

        public var data: CrossSellingData?

        public enum CodingKeys: String, CodingKey {
            case brandDistribution = "brand_distribution"

            case data
        }

        public init(brandDistribution: CatalogInsightBrand?, data: CrossSellingData?) {
            self.brandDistribution = brandDistribution

            self.data = data
        }

        public func duplicate() -> CrossSellingResponse {
            let dict = self.dictionary!
            let copy = CrossSellingResponse(dictionary: dict)!
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
                data = try container.decode(CrossSellingData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandDistribution, forKey: .brandDistribution)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: OptInPostRequest
         Used By: Catalog
     */

    class OptInPostRequest: Codable {
        public var enabled: Bool?

        public var optLevel: String

        public var storeIds: [Int]?

        public var brandIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case optLevel = "opt_level"

            case storeIds = "store_ids"

            case brandIds = "brand_ids"
        }

        public init(brandIds: [Int]?, enabled: Bool?, optLevel: String, storeIds: [Int]?) {
            self.enabled = enabled

            self.optLevel = optLevel

            self.storeIds = storeIds

            self.brandIds = brandIds
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

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
        }
    }

    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var brandIds: [Int]

        public var modifiedOn: Int

        public var companyId: Int

        public var enabled: Bool

        public var storeIds: [Int]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var platform: String

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case enabled

            case storeIds = "store_ids"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case platform
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]?, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]?, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.brandIds = brandIds

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.enabled = enabled

            self.storeIds = storeIds

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.platform = platform
        }

        public func duplicate() -> CompanyOptIn {
            let dict = self.dictionary!
            let copy = CompanyOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

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
        public var businessType: String?

        public var name: String?

        public var companyType: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case businessType = "business_type"

            case name

            case companyType = "company_type"

            case uid
        }

        public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
            self.businessType = businessType

            self.name = name

            self.companyType = companyType

            self.uid = uid
        }

        public func duplicate() -> OptinCompanyDetail {
            let dict = self.dictionary!
            let copy = OptinCompanyDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: CompanyBrandDetail
         Used By: Catalog
     */

    class CompanyBrandDetail: Codable {
        public var totalArticle: Int?

        public var brandId: Int?

        public var brandName: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case totalArticle = "total_article"

            case brandId = "brand_id"

            case brandName = "brand_name"

            case companyId = "company_id"
        }

        public init(brandId: Int?, brandName: String?, companyId: Int?, totalArticle: Int?) {
            self.totalArticle = totalArticle

            self.brandId = brandId

            self.brandName = brandName

            self.companyId = companyId
        }

        public func duplicate() -> CompanyBrandDetail {
            let dict = self.dictionary!
            let copy = CompanyBrandDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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
        public var brand: Int?

        public var company: String?

        public var store: Int?

        public enum CodingKeys: String, CodingKey {
            case brand

            case company

            case store
        }

        public init(brand: Int?, company: String?, store: Int?) {
            self.brand = brand

            self.company = company

            self.store = store
        }

        public func duplicate() -> OptinCompanyMetrics {
            let dict = self.dictionary!
            let copy = OptinCompanyMetrics(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(Int.self, forKey: .brand)

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
                store = try container.decode(Int.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)
        }
    }

    /*
         Model: StoreDetail
         Used By: Catalog
     */

    class StoreDetail: Codable {
        public var modifiedOn: String?

        public var additionalContacts: [[String: Any]]?

        public var companyId: Int?

        public var storeCode: String?

        public var name: String?

        public var displayName: String?

        public var timing: [String: Any]?

        public var documents: [[String: Any]]?

        public var storeType: String?

        public var createdOn: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case additionalContacts = "additional_contacts"

            case companyId = "company_id"

            case storeCode = "store_code"

            case name

            case displayName = "display_name"

            case timing

            case documents

            case storeType = "store_type"

            case createdOn = "created_on"

            case uid
        }

        public init(additionalContacts: [[String: Any]]?, companyId: Int?, createdOn: String?, displayName: String?, documents: [[String: Any]]?, modifiedOn: String?, name: String?, storeCode: String?, storeType: String?, timing: [String: Any]?, uid: Int?) {
            self.modifiedOn = modifiedOn

            self.additionalContacts = additionalContacts

            self.companyId = companyId

            self.storeCode = storeCode

            self.name = name

            self.displayName = displayName

            self.timing = timing

            self.documents = documents

            self.storeType = storeType

            self.createdOn = createdOn

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                name = try container.decode(String.self, forKey: .name)

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
                storeType = try container.decode(String.self, forKey: .storeType)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

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
         Model: AttributeMasterFilter
         Used By: Catalog
     */

    class AttributeMasterFilter: Codable {
        public var dependsOn: [String]?

        public var priority: Int?

        public var indexing: Bool

        public enum CodingKeys: String, CodingKey {
            case dependsOn = "depends_on"

            case priority

            case indexing
        }

        public init(dependsOn: [String]?, indexing: Bool, priority: Int?) {
            self.dependsOn = dependsOn

            self.priority = priority

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
                dependsOn = try container.decode([String].self, forKey: .dependsOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            indexing = try container.decode(Bool.self, forKey: .indexing)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)

            try? container.encodeIfPresent(priority, forKey: .priority)

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
        public var mandatory: Bool?

        public var format: String?

        public var range: AttributeSchemaRange?

        public var type: String

        public var allowedValues: [String]?

        public var multi: Bool?

        public enum CodingKeys: String, CodingKey {
            case mandatory

            case format

            case range

            case type

            case allowedValues = "allowed_values"

            case multi
        }

        public init(allowedValues: [String]?, format: String?, mandatory: Bool?, multi: Bool?, range: AttributeSchemaRange?, type: String) {
            self.mandatory = mandatory

            self.format = format

            self.range = range

            self.type = type

            self.allowedValues = allowedValues

            self.multi = multi
        }

        public func duplicate() -> AttributeMaster {
            let dict = self.dictionary!
            let copy = AttributeMaster(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mandatory = try container.decode(Bool.self, forKey: .mandatory)

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

            do {
                range = try container.decode(AttributeSchemaRange.self, forKey: .range)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                allowedValues = try container.decode([String].self, forKey: .allowedValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multi = try container.decode(Bool.self, forKey: .multi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mandatory, forKey: .mandatory)

            try? container.encodeIfPresent(format, forKey: .format)

            try? container.encodeIfPresent(range, forKey: .range)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)

            try? container.encodeIfPresent(multi, forKey: .multi)
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
         Model: GenderDetail
         Used By: Catalog
     */

    class GenderDetail: Codable {
        public var isNested: Bool?

        public var slug: String?

        public var enabledForEndConsumer: Bool?

        public var filters: AttributeMasterFilter?

        public var meta: AttributeMasterMeta?

        public var departments: [String]?

        public var description: String?

        public var schema: AttributeMaster?

        public var id: String?

        public var name: String?

        public var logo: String?

        public var details: AttributeMasterDetails?

        public enum CodingKeys: String, CodingKey {
            case isNested = "is_nested"

            case slug

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case filters

            case meta

            case departments

            case description

            case schema

            case id

            case name

            case logo

            case details
        }

        public init(departments: [String]?, description: String?, details: AttributeMasterDetails?, enabledForEndConsumer: Bool?, filters: AttributeMasterFilter?, id: String?, isNested: Bool?, logo: String?, meta: AttributeMasterMeta?, name: String?, schema: AttributeMaster?, slug: String?) {
            self.isNested = isNested

            self.slug = slug

            self.enabledForEndConsumer = enabledForEndConsumer

            self.filters = filters

            self.meta = meta

            self.departments = departments

            self.description = description

            self.schema = schema

            self.id = id

            self.name = name

            self.logo = logo

            self.details = details
        }

        public func duplicate() -> GenderDetail {
            let dict = self.dictionary!
            let copy = GenderDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isNested = try container.decode(Bool.self, forKey: .isNested)

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
                enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)

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
                meta = try container.decode(AttributeMasterMeta.self, forKey: .meta)

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
                schema = try container.decode(AttributeMaster.self, forKey: .schema)

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

            do {
                details = try container.decode(AttributeMasterDetails.self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(details, forKey: .details)
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
        public var message: String?

        public var status: Int?

        public var errors: [String: Any]?

        public var meta: [String: Any]?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case status

            case errors

            case meta

            case code
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.message = message

            self.status = status

            self.errors = errors

            self.meta = meta

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
                errors = try container.decode([String: Any].self, forKey: .errors)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: UserSerializer
         Used By: Catalog
     */

    class UserSerializer: Codable {
        public var userId: String?

        public var username: String?

        public var contact: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username

            case contact
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.username = username

            self.contact = contact
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }

    /*
         Model: GetDepartment
         Used By: Catalog
     */

    class GetDepartment: Codable {
        public var pageNo: Int?

        public var modifiedOn: String?

        public var slug: String?

        public var isActive: Bool?

        public var pageSize: Int?

        public var itemType: String?

        public var priorityOrder: Int?

        public var name: String?

        public var logo: String?

        public var synonyms: [String]?

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var createdOn: String?

        public var search: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case pageNo = "page_no"

            case modifiedOn = "modified_on"

            case slug

            case isActive = "is_active"

            case pageSize = "page_size"

            case itemType = "item_type"

            case priorityOrder = "priority_order"

            case name

            case logo

            case synonyms

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case search

            case uid
        }

        public init(createdBy: UserSerializer?, createdOn: String?, isActive: Bool?, itemType: String?, logo: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, pageNo: Int?, pageSize: Int?, priorityOrder: Int?, search: String?, slug: String?, synonyms: [String]?, uid: Int?) {
            self.pageNo = pageNo

            self.modifiedOn = modifiedOn

            self.slug = slug

            self.isActive = isActive

            self.pageSize = pageSize

            self.itemType = itemType

            self.priorityOrder = priorityOrder

            self.name = name

            self.logo = logo

            self.synonyms = synonyms

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.search = search

            self.uid = uid
        }

        public func duplicate() -> GetDepartment {
            let dict = self.dictionary!
            let copy = GetDepartment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageNo = try container.decode(Int.self, forKey: .pageNo)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                pageSize = try container.decode(Int.self, forKey: .pageSize)

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
                logo = try container.decode(String.self, forKey: .logo)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var message: String?

        public var status: Int?

        public var errors: [String: Any]?

        public var meta: [String: Any]?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case status

            case errors

            case meta

            case code
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.message = message

            self.status = status

            self.errors = errors

            self.meta = meta

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
                errors = try container.decode([String: Any].self, forKey: .errors)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var categories: [String]?

        public var isExpirable: Bool

        public var modifiedOn: String?

        public var slug: String

        public var isActive: Bool?

        public var tag: String?

        public var attributes: [String]?

        public var description: String?

        public var name: String?

        public var logo: String?

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var isPhysical: Bool

        public var departments: [String]?

        public var createdOn: String?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case categories

            case isExpirable = "is_expirable"

            case modifiedOn = "modified_on"

            case slug

            case isActive = "is_active"

            case tag

            case attributes

            case description

            case name

            case logo

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case isPhysical = "is_physical"

            case departments

            case createdOn = "created_on"

            case isArchived = "is_archived"
        }

        public init(attributes: [String]?, categories: [String]?, createdBy: [String: Any]?, createdOn: String?, departments: [String]?, description: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, slug: String, tag: String?) {
            self.categories = categories

            self.isExpirable = isExpirable

            self.modifiedOn = modifiedOn

            self.slug = slug

            self.isActive = isActive

            self.tag = tag

            self.attributes = attributes

            self.description = description

            self.name = name

            self.logo = logo

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.isPhysical = isPhysical

            self.departments = departments

            self.createdOn = createdOn

            self.isArchived = isArchived
        }

        public func duplicate() -> ProductTemplate {
            let dict = self.dictionary!
            let copy = ProductTemplate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                attributes = try container.decode([String].self, forKey: .attributes)

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
                logo = try container.decode(String.self, forKey: .logo)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
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
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var categories: [String]?

        public var isExpirable: Bool

        public var slug: String

        public var isActive: Bool?

        public var tag: String?

        public var attributes: [String]?

        public var description: String?

        public var id: String?

        public var name: String?

        public var logo: String?

        public var isPhysical: Bool

        public var departments: [String]?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case categories

            case isExpirable = "is_expirable"

            case slug

            case isActive = "is_active"

            case tag

            case attributes

            case description

            case id

            case name

            case logo

            case isPhysical = "is_physical"

            case departments

            case isArchived = "is_archived"
        }

        public init(attributes: [String]?, categories: [String]?, departments: [String]?, description: String?, id: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, name: String?, slug: String, tag: String?) {
            self.categories = categories

            self.isExpirable = isExpirable

            self.slug = slug

            self.isActive = isActive

            self.tag = tag

            self.attributes = attributes

            self.description = description

            self.id = id

            self.name = name

            self.logo = logo

            self.isPhysical = isPhysical

            self.departments = departments

            self.isArchived = isArchived
        }

        public func duplicate() -> TemplateDetails {
            let dict = self.dictionary!
            let copy = TemplateDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                attributes = try container.decode([String].self, forKey: .attributes)

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
                id = try container.decode(String.self, forKey: .id)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }

    /*
         Model: Properties
         Used By: Catalog
     */

    class Properties: Codable {
        public var traderType: [String: Any]?

        public var shortDescription: [String: Any]?

        public var media: [String: Any]?

        public var description: [String: Any]?

        public var productPublish: [String: Any]?

        public var teaserTag: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var multiSize: [String: Any]?

        public var hsnCode: [String: Any]?

        public var command: [String: Any]?

        public var highlights: [String: Any]?

        public var sizeGuide: [String: Any]?

        public var itemType: [String: Any]?

        public var customOrder: [String: Any]?

        public var brandUid: [String: Any]?

        public var isDependent: [String: Any]?

        public var itemCode: [String: Any]?

        public var isActive: [String: Any]?

        public var sizes: [String: Any]?

        public var noOfBoxes: [String: Any]?

        public var tags: [String: Any]?

        public var returnConfig: [String: Any]?

        public var slug: [String: Any]?

        public var categorySlug: [String: Any]?

        public var trader: [String: Any]?

        public var productGroupTag: [String: Any]?

        public var name: [String: Any]?

        public var moq: [String: Any]?

        public var currency: [String: Any]?

        public var variants: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case traderType = "trader_type"

            case shortDescription = "short_description"

            case media

            case description

            case productPublish = "product_publish"

            case teaserTag = "teaser_tag"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case hsnCode = "hsn_code"

            case command

            case highlights

            case sizeGuide = "size_guide"

            case itemType = "item_type"

            case customOrder = "custom_order"

            case brandUid = "brand_uid"

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case isActive = "is_active"

            case sizes

            case noOfBoxes = "no_of_boxes"

            case tags

            case returnConfig = "return_config"

            case slug

            case categorySlug = "category_slug"

            case trader

            case productGroupTag = "product_group_tag"

            case name

            case moq

            case currency

            case variants
        }

        public init(brandUid: [String: Any]?, categorySlug: [String: Any]?, command: [String: Any]?, countryOfOrigin: [String: Any]?, currency: [String: Any]?, customOrder: [String: Any]?, description: [String: Any]?, highlights: [String: Any]?, hsnCode: [String: Any]?, isActive: [String: Any]?, isDependent: [String: Any]?, itemCode: [String: Any]?, itemType: [String: Any]?, media: [String: Any]?, moq: [String: Any]?, multiSize: [String: Any]?, name: [String: Any]?, noOfBoxes: [String: Any]?, productGroupTag: [String: Any]?, productPublish: [String: Any]?, returnConfig: [String: Any]?, shortDescription: [String: Any]?, sizes: [String: Any]?, sizeGuide: [String: Any]?, slug: [String: Any]?, tags: [String: Any]?, teaserTag: [String: Any]?, trader: [String: Any]?, traderType: [String: Any]?, variants: [String: Any]?) {
            self.traderType = traderType

            self.shortDescription = shortDescription

            self.media = media

            self.description = description

            self.productPublish = productPublish

            self.teaserTag = teaserTag

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.hsnCode = hsnCode

            self.command = command

            self.highlights = highlights

            self.sizeGuide = sizeGuide

            self.itemType = itemType

            self.customOrder = customOrder

            self.brandUid = brandUid

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.isActive = isActive

            self.sizes = sizes

            self.noOfBoxes = noOfBoxes

            self.tags = tags

            self.returnConfig = returnConfig

            self.slug = slug

            self.categorySlug = categorySlug

            self.trader = trader

            self.productGroupTag = productGroupTag

            self.name = name

            self.moq = moq

            self.currency = currency

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
                traderType = try container.decode([String: Any].self, forKey: .traderType)

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
                media = try container.decode([String: Any].self, forKey: .media)

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
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

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
                hsnCode = try container.decode([String: Any].self, forKey: .hsnCode)

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
                highlights = try container.decode([String: Any].self, forKey: .highlights)

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
                itemType = try container.decode([String: Any].self, forKey: .itemType)

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
                brandUid = try container.decode([String: Any].self, forKey: .brandUid)

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
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

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
                sizes = try container.decode([String: Any].self, forKey: .sizes)

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
                tags = try container.decode([String: Any].self, forKey: .tags)

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
                slug = try container.decode([String: Any].self, forKey: .slug)

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
                trader = try container.decode([String: Any].self, forKey: .trader)

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
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(traderType, forKey: .traderType)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(command, forKey: .command)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: GlobalValidation
         Used By: Catalog
     */

    class GlobalValidation: Codable {
        public var required: [String]?

        public var description: String?

        public var title: String?

        public var properties: Properties?

        public var type: String?

        public var definitions: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case required

            case description

            case title

            case properties

            case type

            case definitions
        }

        public init(definitions: [String: Any]?, description: String?, properties: Properties?, required: [String]?, title: String?, type: String?) {
            self.required = required

            self.description = description

            self.title = title

            self.properties = properties

            self.type = type

            self.definitions = definitions
        }

        public func duplicate() -> GlobalValidation {
            let dict = self.dictionary!
            let copy = GlobalValidation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                definitions = try container.decode([String: Any].self, forKey: .definitions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(definitions, forKey: .definitions)
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
         Model: TemplatesValidationResponse
         Used By: Catalog
     */

    class TemplatesValidationResponse: Codable {
        public var templateDetails: TemplateDetails?

        public var data: TemplateValidationData?

        public enum CodingKeys: String, CodingKey {
            case templateDetails = "template_details"

            case data
        }

        public init(data: TemplateValidationData?, templateDetails: TemplateDetails?) {
            self.templateDetails = templateDetails

            self.data = data
        }

        public func duplicate() -> TemplatesValidationResponse {
            let dict = self.dictionary!
            let copy = TemplatesValidationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templateDetails = try container.decode(TemplateDetails.self, forKey: .templateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(TemplateValidationData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateDetails, forKey: .templateDetails)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: InventoryValidationResponse
         Used By: Catalog
     */

    class InventoryValidationResponse: Codable {
        public var message: String?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case data
        }

        public init(data: [String: Any]?, message: String?) {
            self.message = message

            self.data = data
        }

        public func duplicate() -> InventoryValidationResponse {
            let dict = self.dictionary!
            let copy = InventoryValidationResponse(dictionary: dict)!
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

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
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
        public var message: String?

        public var data: HSNData?

        public enum CodingKeys: String, CodingKey {
            case message

            case data
        }

        public init(data: HSNData?, message: String?) {
            self.message = message

            self.data = data
        }

        public func duplicate() -> HSNCodesResponse {
            let dict = self.dictionary!
            let copy = HSNCodesResponse(dictionary: dict)!
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

            do {
                data = try container.decode(HSNData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
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
         Model: ProductDownloadItemsData
         Used By: Catalog
     */

    class ProductDownloadItemsData: Codable {
        public var brand: [String]?

        public var templates: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case brand

            case templates

            case type
        }

        public init(brand: [String]?, templates: [String]?, type: String?) {
            self.brand = brand

            self.templates = templates

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
                brand = try container.decode([String].self, forKey: .brand)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ProductDownloadsItems
         Used By: Catalog
     */

    class ProductDownloadsItems: Codable {
        public var status: String?

        public var triggerOn: String?

        public var sellerId: Double?

        public var taskId: String?

        public var url: String?

        public var completedOn: String?

        public var id: String?

        public var createdBy: VerifiedBy?

        public var data: ProductDownloadItemsData?

        public var templateTags: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case status

            case triggerOn = "trigger_on"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case url

            case completedOn = "completed_on"

            case id

            case createdBy = "created_by"

            case data

            case templateTags = "template_tags"
        }

        public init(completedOn: String?, createdBy: VerifiedBy?, data: ProductDownloadItemsData?, id: String?, sellerId: Double?, status: String?, taskId: String?, templateTags: [String: Any]?, triggerOn: String?, url: String?) {
            self.status = status

            self.triggerOn = triggerOn

            self.sellerId = sellerId

            self.taskId = taskId

            self.url = url

            self.completedOn = completedOn

            self.id = id

            self.createdBy = createdBy

            self.data = data

            self.templateTags = templateTags
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
                url = try container.decode(String.self, forKey: .url)

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
                id = try container.decode(String.self, forKey: .id)

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
                data = try container.decode(ProductDownloadItemsData.self, forKey: .data)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(templateTags, forKey: .templateTags)
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
        public var multivalue: Bool?

        public var data: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case multivalue

            case data
        }

        public init(data: [[String: Any]]?, multivalue: Bool?) {
            self.multivalue = multivalue

            self.data = data
        }

        public func duplicate() -> ProductConfigurationDownloads {
            let dict = self.dictionary!
            let copy = ProductConfigurationDownloads(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multivalue = try container.decode(Bool.self, forKey: .multivalue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([[String: Any]].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multivalue, forKey: .multivalue)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: CategoryMappingValues
         Used By: Catalog
     */

    class CategoryMappingValues: Codable {
        public var catalogId: Int?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case catalogId = "catalog_id"

            case name
        }

        public init(catalogId: Int?, name: String) {
            self.catalogId = catalogId

            self.name = name
        }

        public func duplicate() -> CategoryMappingValues {
            let dict = self.dictionary!
            let copy = CategoryMappingValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                catalogId = try container.decode(Int.self, forKey: .catalogId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(catalogId, forKey: .catalogId)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CategoryMapping
         Used By: Catalog
     */

    class CategoryMapping: Codable {
        public var ajio: CategoryMappingValues?

        public var google: CategoryMappingValues?

        public var facebook: CategoryMappingValues?

        public enum CodingKeys: String, CodingKey {
            case ajio

            case google

            case facebook
        }

        public init(ajio: CategoryMappingValues?, facebook: CategoryMappingValues?, google: CategoryMappingValues?) {
            self.ajio = ajio

            self.google = google

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
                ajio = try container.decode(CategoryMappingValues.self, forKey: .ajio)

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

            do {
                facebook = try container.decode(CategoryMappingValues.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ajio, forKey: .ajio)

            try? container.encodeIfPresent(google, forKey: .google)

            try? container.encodeIfPresent(facebook, forKey: .facebook)
        }
    }

    /*
         Model: Media2
         Used By: Catalog
     */

    class Media2: Codable {
        public var landscape: String

        public var logo: String

        public var portrait: String

        public enum CodingKeys: String, CodingKey {
            case landscape

            case logo

            case portrait
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.landscape = landscape

            self.logo = logo

            self.portrait = portrait
        }

        public func duplicate() -> Media2 {
            let dict = self.dictionary!
            let copy = Media2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(String.self, forKey: .landscape)

            logo = try container.decode(String.self, forKey: .logo)

            portrait = try container.decode(String.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }

    /*
         Model: Hierarchy
         Used By: Catalog
     */

    class Hierarchy: Codable {
        public var department: Int

        public var l1: Int

        public var l2: Int

        public enum CodingKeys: String, CodingKey {
            case department

            case l1

            case l2
        }

        public init(department: Int, l1: Int, l2: Int) {
            self.department = department

            self.l1 = l1

            self.l2 = l2
        }

        public func duplicate() -> Hierarchy {
            let dict = self.dictionary!
            let copy = Hierarchy(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            department = try container.decode(Int.self, forKey: .department)

            l1 = try container.decode(Int.self, forKey: .l1)

            l2 = try container.decode(Int.self, forKey: .l2)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(l1, forKey: .l1)

            try? container.encodeIfPresent(l2, forKey: .l2)
        }
    }

    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var slug: String?

        public var marketplaces: CategoryMapping?

        public var level: Int

        public var isActive: Bool

        public var media: Media2?

        public var priority: Int?

        public var tryouts: [String]?

        public var name: String

        public var synonyms: [String]?

        public var hierarchy: [Hierarchy]?

        public var departments: [Int]

        public enum CodingKeys: String, CodingKey {
            case slug

            case marketplaces

            case level

            case isActive = "is_active"

            case media

            case priority

            case tryouts

            case name

            case synonyms

            case hierarchy

            case departments
        }

        public init(departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?) {
            self.slug = slug

            self.marketplaces = marketplaces

            self.level = level

            self.isActive = isActive

            self.media = media

            self.priority = priority

            self.tryouts = tryouts

            self.name = name

            self.synonyms = synonyms

            self.hierarchy = hierarchy

            self.departments = departments
        }

        public func duplicate() -> CategoryRequestBody {
            let dict = self.dictionary!
            let copy = CategoryRequestBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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

            level = try container.decode(Int.self, forKey: .level)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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
                synonyms = try container.decode([String].self, forKey: .synonyms)

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

            departments = try container.decode([Int].self, forKey: .departments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(departments, forKey: .departments)
        }
    }

    /*
         Model: CategoryCreateResponse
         Used By: Catalog
     */

    class CategoryCreateResponse: Codable {
        public var message: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case message

            case uid
        }

        public init(message: String?, uid: Int?) {
            self.message = message

            self.uid = uid
        }

        public func duplicate() -> CategoryCreateResponse {
            let dict = self.dictionary!
            let copy = CategoryCreateResponse(dictionary: dict)!
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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var modifiedOn: String?

        public var slug: String?

        public var marketplaces: CategoryMapping?

        public var level: Int

        public var isActive: Bool

        public var media: Media2?

        public var priority: Int?

        public var id: String?

        public var tryouts: [String]?

        public var name: String

        public var createdBy: [String: Any]?

        public var synonyms: [String]?

        public var modifiedBy: [String: Any]?

        public var hierarchy: [Hierarchy]?

        public var departments: [Int]

        public var createdOn: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case slug

            case marketplaces

            case level

            case isActive = "is_active"

            case media

            case priority

            case id = "_id"

            case tryouts

            case name

            case createdBy = "created_by"

            case synonyms

            case modifiedBy = "modified_by"

            case hierarchy

            case departments

            case createdOn = "created_on"

            case uid
        }

        public init(createdBy: [String: Any]?, createdOn: String?, departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?, uid: Int?, id: String?) {
            self.modifiedOn = modifiedOn

            self.slug = slug

            self.marketplaces = marketplaces

            self.level = level

            self.isActive = isActive

            self.media = media

            self.priority = priority

            self.id = id

            self.tryouts = tryouts

            self.name = name

            self.createdBy = createdBy

            self.synonyms = synonyms

            self.modifiedBy = modifiedBy

            self.hierarchy = hierarchy

            self.departments = departments

            self.createdOn = createdOn

            self.uid = uid
        }

        public func duplicate() -> Category {
            let dict = self.dictionary!
            let copy = Category(dictionary: dict)!
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
                slug = try container.decode(String.self, forKey: .slug)

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

            level = try container.decode(Int.self, forKey: .level)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var manufacturingTime: Int?

        public var isCustomOrder: Bool?

        public var manufacturingTimeUnit: String?

        public enum CodingKeys: String, CodingKey {
            case manufacturingTime = "manufacturing_time"

            case isCustomOrder = "is_custom_order"

            case manufacturingTimeUnit = "manufacturing_time_unit"
        }

        public init(isCustomOrder: Bool?, manufacturingTime: Int?, manufacturingTimeUnit: String?) {
            self.manufacturingTime = manufacturingTime

            self.isCustomOrder = isCustomOrder

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
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

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
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
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
         Model: Trader
         Used By: Catalog
     */

    class Trader: Codable {
        public var address: [String]?

        public var name: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case address

            case name

            case type
        }

        public init(address: [String]?, name: String?, type: String?) {
            self.address = address

            self.name = name

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

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)
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
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var changeRequestId: String?

        public var shortDescription: String?

        public var requester: String?

        public var media: [Media1]?

        public var description: String?

        public var productPublish: ProductPublish?

        public var teaserTag: TeaserTag?

        public var templateTag: String

        public var countryOfOrigin: String

        public var multiSize: Bool?

        public var hsnCode: String

        public var companyId: Int

        public var highlights: [String]?

        public var action: String?

        public var sizeGuide: String?

        public var itemType: String

        public var customJson: [String: Any]?

        public var brandUid: Int

        public var customOrder: CustomOrder?

        public var isSet: Bool?

        public var isDependent: Bool?

        public var itemCode: String

        public var isActive: Bool?

        public var bulkJobId: String?

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var tags: [String]?

        public var returnConfig: ReturnConfig

        public var slug: String

        public var categorySlug: String

        public var trader: [Trader]

        public var productGroupTag: [String]?

        public var name: String

        public var departments: [Int]

        public var moq: OrderQuantity?

        public var currency: String

        public var variants: [String: Any]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case changeRequestId = "change_request_id"

            case shortDescription = "short_description"

            case requester

            case media

            case description

            case productPublish = "product_publish"

            case teaserTag = "teaser_tag"

            case templateTag = "template_tag"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case hsnCode = "hsn_code"

            case companyId = "company_id"

            case highlights

            case action

            case sizeGuide = "size_guide"

            case itemType = "item_type"

            case customJson = "_custom_json"

            case brandUid = "brand_uid"

            case customOrder = "custom_order"

            case isSet = "is_set"

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case isActive = "is_active"

            case bulkJobId = "bulk_job_id"

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case tags

            case returnConfig = "return_config"

            case slug

            case categorySlug = "category_slug"

            case trader

            case productGroupTag = "product_group_tag"

            case name

            case departments

            case moq

            case currency

            case variants

            case uid
        }

        public init(action: String?, brandUid: Int, bulkJobId: String?, categorySlug: String, changeRequestId: String?, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder?, departments: [Int], description: String?, highlights: [String]?, hsnCode: String, isActive: Bool?, isDependent: Bool?, isImageLessProduct: Bool?, isSet: Bool?, itemCode: String, itemType: String, media: [Media1]?, moq: OrderQuantity?, multiSize: Bool?, name: String, noOfBoxes: Int?, productGroupTag: [String]?, productPublish: ProductPublish?, requester: String?, returnConfig: ReturnConfig, shortDescription: String?, sizeGuide: String?, slug: String, tags: [String]?, teaserTag: TeaserTag?, templateTag: String, trader: [Trader], uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.changeRequestId = changeRequestId

            self.shortDescription = shortDescription

            self.requester = requester

            self.media = media

            self.description = description

            self.productPublish = productPublish

            self.teaserTag = teaserTag

            self.templateTag = templateTag

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.hsnCode = hsnCode

            self.companyId = companyId

            self.highlights = highlights

            self.action = action

            self.sizeGuide = sizeGuide

            self.itemType = itemType

            self.customJson = customJson

            self.brandUid = brandUid

            self.customOrder = customOrder

            self.isSet = isSet

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.isActive = isActive

            self.bulkJobId = bulkJobId

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.tags = tags

            self.returnConfig = returnConfig

            self.slug = slug

            self.categorySlug = categorySlug

            self.trader = trader

            self.productGroupTag = productGroupTag

            self.name = name

            self.departments = departments

            self.moq = moq

            self.currency = currency

            self.variants = variants

            self.uid = uid
        }

        public func duplicate() -> ProductCreateUpdate {
            let dict = self.dictionary!
            let copy = ProductCreateUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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
                requester = try container.decode(String.self, forKey: .requester)

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
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            slug = try container.decode(String.self, forKey: .slug)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(uid, forKey: .uid)
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
        public var secureUrl: String?

        public var url: String?

        public var aspectRatioF: Int?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"

            case url

            case aspectRatioF = "aspect_ratio_f"

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String?, aspectRatioF: Int?, secureUrl: String?, url: String?) {
            self.secureUrl = secureUrl

            self.url = url

            self.aspectRatioF = aspectRatioF

            self.aspectRatio = aspectRatio
        }

        public func duplicate() -> Logo {
            let dict = self.dictionary!
            let copy = Logo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }

    /*
         Model: Brand
         Used By: Catalog
     */

    class Brand: Codable {
        public var name: String?

        public var logo: Logo?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case uid
        }

        public init(logo: Logo?, name: String?, uid: Int?) {
            self.name = name

            self.logo = logo

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
                name = try container.decode(String.self, forKey: .name)

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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: Image
         Used By: Catalog
     */

    class Image: Codable {
        public var secureUrl: String?

        public var url: String?

        public var aspectRatioF: Double?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"

            case url

            case aspectRatioF = "aspect_ratio_f"

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String?, aspectRatioF: Double?, secureUrl: String?, url: String?) {
            self.secureUrl = secureUrl

            self.url = url

            self.aspectRatioF = aspectRatioF

            self.aspectRatio = aspectRatio
        }

        public func duplicate() -> Image {
            let dict = self.dictionary!
            let copy = Image(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }

    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var l3Mapping: [String]?

        public var shortDescription: String?

        public var media: [Media1]?

        public var description: String?

        public var productPublish: ProductPublished?

        public var templateTag: String?

        public var countryOfOrigin: String?

        public var multiSize: Bool?

        public var brand: Brand?

        public var hsnCode: String?

        public var highlights: [String]?

        public var categoryUid: Int?

        public var sizeGuide: String?

        public var primaryColor: String?

        public var itemType: String?

        public var color: String?

        public var customJson: [String: Any]?

        public var brandUid: Int?

        public var customOrder: [String: Any]?

        public var isSet: Bool?

        public var isDependent: Bool?

        public var allSizes: [[String: Any]]?

        public var itemCode: String?

        public var isActive: Bool?

        public var isPhysical: Bool?

        public var sizes: [[String: Any]]?

        public var images: [Image]?

        public var imageNature: String?

        public var slug: String?

        public var categorySlug: String?

        public var id: String?

        public var name: String?

        public var departments: [Int]?

        public var moq: [String: Any]?

        public var currency: String?

        public var variants: [String: Any]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case l3Mapping = "l3_mapping"

            case shortDescription = "short_description"

            case media

            case description

            case productPublish = "product_publish"

            case templateTag = "template_tag"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case brand

            case hsnCode = "hsn_code"

            case highlights

            case categoryUid = "category_uid"

            case sizeGuide = "size_guide"

            case primaryColor = "primary_color"

            case itemType = "item_type"

            case color

            case customJson = "_custom_json"

            case brandUid = "brand_uid"

            case customOrder = "custom_order"

            case isSet = "is_set"

            case isDependent = "is_dependent"

            case allSizes = "all_sizes"

            case itemCode = "item_code"

            case isActive = "is_active"

            case isPhysical = "is_physical"

            case sizes

            case images

            case imageNature = "image_nature"

            case slug

            case categorySlug = "category_slug"

            case id

            case name

            case departments

            case moq

            case currency

            case variants

            case uid
        }

        public init(allSizes: [[String: Any]]?, brand: Brand?, brandUid: Int?, categorySlug: String?, categoryUid: Int?, color: String?, countryOfOrigin: String?, currency: String?, customOrder: [String: Any]?, departments: [Int]?, description: String?, highlights: [String]?, hsnCode: String?, id: String?, images: [Image]?, imageNature: String?, isActive: Bool?, isDependent: Bool?, isPhysical: Bool?, isSet: Bool?, itemCode: String?, itemType: String?, l3Mapping: [String]?, media: [Media1]?, moq: [String: Any]?, multiSize: Bool?, name: String?, primaryColor: String?, productPublish: ProductPublished?, shortDescription: String?, sizes: [[String: Any]]?, sizeGuide: String?, slug: String?, templateTag: String?, uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.l3Mapping = l3Mapping

            self.shortDescription = shortDescription

            self.media = media

            self.description = description

            self.productPublish = productPublish

            self.templateTag = templateTag

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.brand = brand

            self.hsnCode = hsnCode

            self.highlights = highlights

            self.categoryUid = categoryUid

            self.sizeGuide = sizeGuide

            self.primaryColor = primaryColor

            self.itemType = itemType

            self.color = color

            self.customJson = customJson

            self.brandUid = brandUid

            self.customOrder = customOrder

            self.isSet = isSet

            self.isDependent = isDependent

            self.allSizes = allSizes

            self.itemCode = itemCode

            self.isActive = isActive

            self.isPhysical = isPhysical

            self.sizes = sizes

            self.images = images

            self.imageNature = imageNature

            self.slug = slug

            self.categorySlug = categorySlug

            self.id = id

            self.name = name

            self.departments = departments

            self.moq = moq

            self.currency = currency

            self.variants = variants

            self.uid = uid
        }

        public func duplicate() -> Product {
            let dict = self.dictionary!
            let copy = Product(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                productPublish = try container.decode(ProductPublished.self, forKey: .productPublish)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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
                brand = try container.decode(Brand.self, forKey: .brand)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

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
                images = try container.decode([Image].self, forKey: .images)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                id = try container.decode(String.self, forKey: .id)

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
                departments = try container.decode([Int].self, forKey: .departments)

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
                currency = try container.decode(String.self, forKey: .currency)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var userId: String?

        public var uid: String?

        public var username: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case uid

            case username

            case email
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.userId = userId

            self.uid = uid

            self.username = username

            self.email = email
        }

        public func duplicate() -> UserInfo1 {
            let dict = self.dictionary!
            let copy = UserInfo1(dictionary: dict)!
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
                uid = try container.decode(String.self, forKey: .uid)

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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var failedRecords: [[String: Any]]?

        public var customTemplateTag: String?

        public var stage: String?

        public var modifiedOn: String?

        public var companyId: Int

        public var succeed: Int?

        public var cancelled: Int?

        public var isActive: Bool?

        public var trackingUrl: String?

        public var cancelledRecords: [[String: Any]]?

        public var createdBy: UserInfo1?

        public var failed: Int?

        public var modifiedBy: UserInfo1?

        public var templateTag: String?

        public var createdOn: String

        public var filePath: String?

        public var total: Int

        public enum CodingKeys: String, CodingKey {
            case failedRecords = "failed_records"

            case customTemplateTag = "custom_template_tag"

            case stage

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case succeed

            case cancelled

            case isActive = "is_active"

            case trackingUrl = "tracking_url"

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"

            case failed

            case modifiedBy = "modified_by"

            case templateTag = "template_tag"

            case createdOn = "created_on"

            case filePath = "file_path"

            case total
        }

        public init(cancelled: Int?, cancelledRecords: [[String: Any]]?, companyId: Int, createdBy: UserInfo1?, createdOn: String, customTemplateTag: String?, failed: Int?, failedRecords: [[String: Any]]?, filePath: String?, isActive: Bool?, modifiedBy: UserInfo1?, modifiedOn: String?, stage: String?, succeed: Int?, templateTag: String?, total: Int, trackingUrl: String?) {
            self.failedRecords = failedRecords

            self.customTemplateTag = customTemplateTag

            self.stage = stage

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.succeed = succeed

            self.cancelled = cancelled

            self.isActive = isActive

            self.trackingUrl = trackingUrl

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy

            self.failed = failed

            self.modifiedBy = modifiedBy

            self.templateTag = templateTag

            self.createdOn = createdOn

            self.filePath = filePath

            self.total = total
        }

        public func duplicate() -> BulkJob {
            let dict = self.dictionary!
            let copy = BulkJob(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

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
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            total = try container.decode(Int.self, forKey: .total)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }

    /*
         Model: UserDetail
         Used By: Catalog
     */

    class UserDetail: Codable {
        public var fullName: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case fullName = "full_name"

            case userId = "user_id"

            case username
        }

        public init(fullName: String?, username: String?, userId: String?) {
            self.fullName = fullName

            self.userId = userId

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
                fullName = try container.decode(String.self, forKey: .fullName)

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

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: ProductBulkRequest
         Used By: Catalog
     */

    class ProductBulkRequest: Codable {
        public var failedRecords: [String]?

        public var stage: String?

        public var modifiedOn: String?

        public var companyId: Int?

        public var succeed: Int?

        public var cancelled: Int?

        public var template: ProductTemplate?

        public var isActive: Bool?

        public var cancelledRecords: [String]?

        public var failed: Int?

        public var templateTag: String?

        public var createdBy: UserDetail?

        public var modifiedBy: UserDetail?

        public var createdOn: String?

        public var filePath: String?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case failedRecords = "failed_records"

            case stage

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case succeed

            case cancelled

            case template

            case isActive = "is_active"

            case cancelledRecords = "cancelled_records"

            case failed

            case templateTag = "template_tag"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case filePath = "file_path"

            case total
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserDetail?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, isActive: Bool?, modifiedBy: UserDetail?, modifiedOn: String?, stage: String?, succeed: Int?, template: ProductTemplate?, templateTag: String?, total: Int?) {
            self.failedRecords = failedRecords

            self.stage = stage

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.succeed = succeed

            self.cancelled = cancelled

            self.template = template

            self.isActive = isActive

            self.cancelledRecords = cancelledRecords

            self.failed = failed

            self.templateTag = templateTag

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.filePath = filePath

            self.total = total
        }

        public func duplicate() -> ProductBulkRequest {
            let dict = self.dictionary!
            let copy = ProductBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                template = try container.decode(ProductTemplate.self, forKey: .template)

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
                failed = try container.decode(Int.self, forKey: .failed)

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
                filePath = try container.decode(String.self, forKey: .filePath)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(total, forKey: .total)
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
        public var batchId: String

        public var templateTag: String

        public var data: [[String: Any]]

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case templateTag = "template_tag"

            case data

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.batchId = batchId

            self.templateTag = templateTag

            self.data = data

            self.companyId = companyId
        }

        public func duplicate() -> BulkProductRequest {
            let dict = self.dictionary!
            let copy = BulkProductRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            data = try container.decode([[String: Any]].self, forKey: .data)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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
        public var url: String

        public var companyId: Int?

        public var user: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case url

            case companyId = "company_id"

            case user
        }

        public init(companyId: Int?, url: String, user: [String: Any]) {
            self.url = url

            self.companyId = companyId

            self.user = user
        }

        public func duplicate() -> ProductBulkAssets {
            let dict = self.dictionary!
            let copy = ProductBulkAssets(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode([String: Any].self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }

    /*
         Model: UserCommon
         Used By: Catalog
     */

    class UserCommon: Codable {
        public var userId: String?

        public var username: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username

            case companyId = "company_id"
        }

        public init(companyId: Int?, username: String?, userId: String?) {
            self.userId = userId

            self.username = username

            self.companyId = companyId
        }

        public func duplicate() -> UserCommon {
            let dict = self.dictionary!
            let copy = UserCommon(dictionary: dict)!
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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: Items
         Used By: Catalog
     */

    class Items: Codable {
        public var failedRecords: [String]?

        public var stage: String?

        public var modifiedOn: String?

        public var companyId: Int?

        public var succeed: Int?

        public var cancelled: Int?

        public var retry: Int?

        public var isActive: Bool?

        public var trackingUrl: String?

        public var id: String?

        public var cancelledRecords: [String]?

        public var createdBy: UserCommon?

        public var failed: Int?

        public var modifiedBy: UserCommon?

        public var createdOn: String?

        public var filePath: String?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case failedRecords = "failed_records"

            case stage

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case succeed

            case cancelled

            case retry

            case isActive = "is_active"

            case trackingUrl = "tracking_url"

            case id

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"

            case failed

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case filePath = "file_path"

            case total
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserCommon?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: UserCommon?, modifiedOn: String?, retry: Int?, stage: String?, succeed: Int?, total: Int?, trackingUrl: String?) {
            self.failedRecords = failedRecords

            self.stage = stage

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.succeed = succeed

            self.cancelled = cancelled

            self.retry = retry

            self.isActive = isActive

            self.trackingUrl = trackingUrl

            self.id = id

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy

            self.failed = failed

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.filePath = filePath

            self.total = total
        }

        public func duplicate() -> Items {
            let dict = self.dictionary!
            let copy = Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                failed = try container.decode(Int.self, forKey: .failed)

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
                filePath = try container.decode(String.self, forKey: .filePath)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(total, forKey: .total)
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
        public var itemId: Int?

        public var companyId: Int?

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case companyId = "company_id"

            case size
        }

        public init(companyId: Int?, itemId: Int?, size: String?) {
            self.itemId = itemId

            self.companyId = companyId

            self.size = size
        }

        public func duplicate() -> ProductSizeDeleteDataResponse {
            let dict = self.dictionary!
            let copy = ProductSizeDeleteDataResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(size, forKey: .size)
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
         Model: SetSize
         Used By: Catalog
     */

    class SetSize: Codable {
        public var pieces: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case pieces

            case size
        }

        public init(pieces: Int, size: String) {
            self.pieces = pieces

            self.size = size
        }

        public func duplicate() -> SetSize {
            let dict = self.dictionary!
            let copy = SetSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pieces = try container.decode(Int.self, forKey: .pieces)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pieces, forKey: .pieces)

            try? container.encodeIfPresent(size, forKey: .size)
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
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var primary: Bool?

        public var gtinType: String

        public var gtinValue: String

        public enum CodingKeys: String, CodingKey {
            case primary

            case gtinType = "gtin_type"

            case gtinValue = "gtin_value"
        }

        public init(gtinType: String, gtinValue: String, primary: Bool?) {
            self.primary = primary

            self.gtinType = gtinType

            self.gtinValue = gtinValue
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

            gtinType = try container.decode(String.self, forKey: .gtinType)

            gtinValue = try container.decode(String.self, forKey: .gtinValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
        }
    }

    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var priceTransfer: Double?

        public var itemWeightUnitOfMeasure: String?

        public var priceEffective: Double

        public var itemLength: Double?

        public var expirationDate: String?

        public var set: InventorySet?

        public var quantity: Int

        public var itemHeight: Double?

        public var itemWeight: Double?

        public var price: Double

        public var size: String

        public var itemWidth: Double?

        public var identifiers: [GTIN]

        public var storeCode: String

        public var isSet: Bool?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case priceTransfer = "price_transfer"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case priceEffective = "price_effective"

            case itemLength = "item_length"

            case expirationDate = "expiration_date"

            case set

            case quantity

            case itemHeight = "item_height"

            case itemWeight = "item_weight"

            case price

            case size

            case itemWidth = "item_width"

            case identifiers

            case storeCode = "store_code"

            case isSet = "is_set"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency
        }

        public init(currency: String, expirationDate: String?, identifiers: [GTIN], isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, set: InventorySet?, size: String, storeCode: String) {
            self.priceTransfer = priceTransfer

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.priceEffective = priceEffective

            self.itemLength = itemLength

            self.expirationDate = expirationDate

            self.set = set

            self.quantity = quantity

            self.itemHeight = itemHeight

            self.itemWeight = itemWeight

            self.price = price

            self.size = size

            self.itemWidth = itemWidth

            self.identifiers = identifiers

            self.storeCode = storeCode

            self.isSet = isSet

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency
        }

        public func duplicate() -> InvSize {
            let dict = self.dictionary!
            let copy = InvSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

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

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(Double.self, forKey: .price)

            size = try container.decode(String.self, forKey: .size)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var item: ItemQuery

        public var companyId: Int

        public var sizes: [InvSize]

        public enum CodingKeys: String, CodingKey {
            case item

            case companyId = "company_id"

            case sizes
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.item = item

            self.companyId = companyId

            self.sizes = sizes
        }

        public func duplicate() -> InventoryRequest {
            let dict = self.dictionary!
            let copy = InventoryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            item = try container.decode(ItemQuery.self, forKey: .item)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([InvSize].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: InventoryResponse
         Used By: Catalog
     */

    class InventoryResponse: Codable {
        public var priceTransfer: Int?

        public var priceEffective: Int?

        public var quantity: Int?

        public var uid: String?

        public var store: [String: Any]?

        public var sellableQuantity: Int?

        public var price: Int?

        public var sellerIdentifier: Int?

        public var identifiers: [String: Any]?

        public var size: String?

        public var itemId: Int?

        public var inventoryUpdatedOn: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case priceTransfer = "price_transfer"

            case priceEffective = "price_effective"

            case quantity

            case uid

            case store

            case sellableQuantity = "sellable_quantity"

            case price

            case sellerIdentifier = "seller_identifier"

            case identifiers

            case size

            case itemId = "item_id"

            case inventoryUpdatedOn = "inventory_updated_on"

            case currency
        }

        public init(currency: String?, identifiers: [String: Any]?, inventoryUpdatedOn: String?, itemId: Int?, price: Int?, priceEffective: Int?, priceTransfer: Int?, quantity: Int?, sellableQuantity: Int?, sellerIdentifier: Int?, size: String?, store: [String: Any]?, uid: String?) {
            self.priceTransfer = priceTransfer

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.uid = uid

            self.store = store

            self.sellableQuantity = sellableQuantity

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.identifiers = identifiers

            self.size = size

            self.itemId = itemId

            self.inventoryUpdatedOn = inventoryUpdatedOn

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
                priceTransfer = try container.decode(Int.self, forKey: .priceTransfer)

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
                store = try container.decode([String: Any].self, forKey: .store)

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
                price = try container.decode(Int.self, forKey: .price)

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
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

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

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

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

            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: InventoryDeleteData
         Used By: Catalog
     */

    class InventoryDeleteData: Codable {
        public var locationId: Int?

        public var itemId: Int?

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case locationId = "location_id"

            case itemId = "item_id"

            case size
        }

        public init(itemId: Int?, locationId: Int?, size: String?) {
            self.locationId = locationId

            self.itemId = itemId

            self.size = size
        }

        public func duplicate() -> InventoryDeleteData {
            let dict = self.dictionary!
            let copy = InventoryDeleteData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)
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
        public var failedRecords: [String]?

        public var stage: String?

        public var cancelled: Int?

        public var companyId: Int?

        public var modifiedOn: String?

        public var succeed: Int?

        public var isActive: Bool?

        public var id: String?

        public var cancelledRecords: [String]?

        public var createdBy: [String: Any]?

        public var failed: Int?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var filePath: String?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case failedRecords = "failed_records"

            case stage

            case cancelled

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case succeed

            case isActive = "is_active"

            case id

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"

            case failed

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case filePath = "file_path"

            case total
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: [String: Any]?, modifiedOn: String?, stage: String?, succeed: Int?, total: Int?) {
            self.failedRecords = failedRecords

            self.stage = stage

            self.cancelled = cancelled

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.succeed = succeed

            self.isActive = isActive

            self.id = id

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy

            self.failed = failed

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.filePath = filePath

            self.total = total
        }

        public func duplicate() -> BulkInventoryGetItems {
            let dict = self.dictionary!
            let copy = BulkInventoryGetItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                failed = try container.decode(Int.self, forKey: .failed)

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
                filePath = try container.decode(String.self, forKey: .filePath)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(total, forKey: .total)
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
        public var priceTransfer: Double?

        public var itemWeightUnitOfMeasure: String?

        public var priceEffective: Double

        public var itemLength: Double?

        public var expirationDate: String?

        public var set: InventorySet?

        public var quantity: Int

        public var itemHeight: Double?

        public var itemWeight: Double?

        public var price: Double

        public var sellerIdentifier: String

        public var size: String?

        public var itemWidth: Double?

        public var identifiers: [[String: Any]]?

        public var storeCode: String

        public var isSet: Bool?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case priceTransfer = "price_transfer"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case priceEffective = "price_effective"

            case itemLength = "item_length"

            case expirationDate = "expiration_date"

            case set

            case quantity

            case itemHeight = "item_height"

            case itemWeight = "item_weight"

            case price

            case sellerIdentifier = "seller_identifier"

            case size

            case itemWidth = "item_width"

            case identifiers

            case storeCode = "store_code"

            case isSet = "is_set"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency
        }

        public init(currency: String, expirationDate: String?, identifiers: [[String: Any]]?, isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, sellerIdentifier: String, set: InventorySet?, size: String?, storeCode: String) {
            self.priceTransfer = priceTransfer

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.priceEffective = priceEffective

            self.itemLength = itemLength

            self.expirationDate = expirationDate

            self.set = set

            self.quantity = quantity

            self.itemHeight = itemHeight

            self.itemWeight = itemWeight

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.itemWidth = itemWidth

            self.identifiers = identifiers

            self.storeCode = storeCode

            self.isSet = isSet

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency
        }

        public func duplicate() -> Size1 {
            let dict = self.dictionary!
            let copy = Size1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

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

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(Double.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                size = try container.decode(String.self, forKey: .size)

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
                identifiers = try container.decode([[String: Any]].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(size, forKey: .size)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var batchId: String

        public var user: [String: Any]?

        public var companyId: Int

        public var sizes: [Size1]

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case user

            case companyId = "company_id"

            case sizes
        }

        public init(batchId: String, companyId: Int, sizes: [Size1], user: [String: Any]?) {
            self.batchId = batchId

            self.user = user

            self.companyId = companyId

            self.sizes = sizes
        }

        public func duplicate() -> InventoryBulkRequest {
            let dict = self.dictionary!
            let copy = InventoryBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([Size1].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }

    /*
         Model: InventoryExportRequest
         Used By: Catalog
     */

    class InventoryExportRequest: Codable {
        public var brand: [Int]?

        public var store: [Int]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case brand

            case store

            case type
        }

        public init(brand: [Int]?, store: [Int]?, type: String?) {
            self.brand = brand

            self.store = store

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
                brand = try container.decode([Int].self, forKey: .brand)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(type, forKey: .type)
        }
    }

    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var status: String?

        public var triggerOn: String?

        public var sellerId: Int

        public var taskId: String

        public var url: String?

        public var requestParams: [String: Any]?

        public var completedOn: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case triggerOn = "trigger_on"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case url

            case requestParams = "request_params"

            case completedOn = "completed_on"
        }

        public init(completedOn: String?, requestParams: [String: Any]?, sellerId: Int, status: String?, taskId: String, triggerOn: String?, url: String?) {
            self.status = status

            self.triggerOn = triggerOn

            self.sellerId = sellerId

            self.taskId = taskId

            self.url = url

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
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
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
        public var hsnCode: String

        public var threshold1: Double

        public var companyId: Int

        public var taxOnEsp: Bool?

        public var uid: Int?

        public var tax1: Double

        public var taxOnMrp: Bool

        public var hs2Code: String

        public var threshold2: Double?

        public var tax2: Double?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case threshold1

            case companyId = "company_id"

            case taxOnEsp = "tax_on_esp"

            case uid

            case tax1

            case taxOnMrp = "tax_on_mrp"

            case hs2Code = "hs2_code"

            case threshold2

            case tax2
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, tax1: Double, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool, threshold1: Double, threshold2: Double?, uid: Int?) {
            self.hsnCode = hsnCode

            self.threshold1 = threshold1

            self.companyId = companyId

            self.taxOnEsp = taxOnEsp

            self.uid = uid

            self.tax1 = tax1

            self.taxOnMrp = taxOnMrp

            self.hs2Code = hs2Code

            self.threshold2 = threshold2

            self.tax2 = tax2
        }

        public func duplicate() -> HsnUpsert {
            let dict = self.dictionary!
            let copy = HsnUpsert(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            threshold1 = try container.decode(Double.self, forKey: .threshold1)

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

            tax1 = try container.decode(Double.self, forKey: .tax1)

            taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            hs2Code = try container.decode(String.self, forKey: .hs2Code)

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encode(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(tax2, forKey: .tax2)
        }
    }

    /*
         Model: HsnCodesObject
         Used By: Catalog
     */

    class HsnCodesObject: Codable {
        public var hsnCode: String?

        public var modifiedOn: String?

        public var threshold1: Double?

        public var companyId: Int?

        public var taxOnEsp: Bool?

        public var id: String?

        public var tax1: Double?

        public var taxOnMrp: Bool?

        public var hs2Code: String?

        public var threshold2: Double?

        public var tax2: Double?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case modifiedOn = "modified_on"

            case threshold1

            case companyId = "company_id"

            case taxOnEsp = "tax_on_esp"

            case id

            case tax1

            case taxOnMrp = "tax_on_mrp"

            case hs2Code = "hs2_code"

            case threshold2

            case tax2
        }

        public init(companyId: Int?, hs2Code: String?, hsnCode: String?, id: String?, modifiedOn: String?, tax1: Double?, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool?, threshold1: Double?, threshold2: Double?) {
            self.hsnCode = hsnCode

            self.modifiedOn = modifiedOn

            self.threshold1 = threshold1

            self.companyId = companyId

            self.taxOnEsp = taxOnEsp

            self.id = id

            self.tax1 = tax1

            self.taxOnMrp = taxOnMrp

            self.hs2Code = hs2Code

            self.threshold2 = threshold2

            self.tax2 = tax2
        }

        public func duplicate() -> HsnCodesObject {
            let dict = self.dictionary!
            let copy = HsnCodesObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                threshold1 = try container.decode(Double.self, forKey: .threshold1)

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
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

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
                tax1 = try container.decode(Double.self, forKey: .tax1)

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
                hs2Code = try container.decode(String.self, forKey: .hs2Code)

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
                tax2 = try container.decode(Double.self, forKey: .tax2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(tax2, forKey: .tax2)
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
        public var hasNext: Bool?

        public var hasPrevious: Bool?

        public var size: Int?

        public var current: String?

        public var itemTotal: Int?

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case hasPrevious = "has_previous"

            case size

            case current

            case itemTotal = "item_total"
        }

        public init(current: String?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, size: Int?) {
            self.hasNext = hasNext

            self.hasPrevious = hasPrevious

            self.size = size

            self.current = current

            self.itemTotal = itemTotal
        }

        public func duplicate() -> PageResponse {
            let dict = self.dictionary!
            let copy = PageResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

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
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
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
        public var slug: String?

        public var banners: ImageUrls?

        public var action: Action?

        public var discount: String?

        public var name: String?

        public var logo: Media?

        public var departments: [String]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case banners

            case action

            case discount

            case name

            case logo

            case departments

            case uid
        }

        public init(action: Action?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
            self.slug = slug

            self.banners = banners

            self.action = action

            self.discount = discount

            self.name = name

            self.logo = logo

            self.departments = departments

            self.uid = uid
        }

        public func duplicate() -> BrandItem {
            let dict = self.dictionary!
            let copy = BrandItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var slug: String?

        public var priorityOrder: Int?

        public var name: String?

        public var logo: Media?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case priorityOrder = "priority_order"

            case name

            case logo

            case uid
        }

        public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.slug = slug

            self.priorityOrder = priorityOrder

            self.name = name

            self.logo = logo

            self.uid = uid
        }

        public func duplicate() -> Department {
            let dict = self.dictionary!
            let copy = Department(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                name = try container.decode(String.self, forKey: .name)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var slug: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case uid
        }

        public init(slug: String?, uid: Int?) {
            self.slug = slug

            self.uid = uid
        }

        public func duplicate() -> DepartmentIdentifier {
            let dict = self.dictionary!
            let copy = DepartmentIdentifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: ThirdLevelChild
         Used By: Catalog
     */

    class ThirdLevelChild: Codable {
        public var slug: String?

        public var banners: ImageUrls?

        public var action: Action?

        public var childs: [[String: Any]]?

        public var customJson: [String: Any]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case banners

            case action

            case childs

            case customJson = "_custom_json"

            case name

            case uid
        }

        public init(action: Action?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.slug = slug

            self.banners = banners

            self.action = action

            self.childs = childs

            self.customJson = customJson

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> ThirdLevelChild {
            let dict = self.dictionary!
            let copy = ThirdLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                childs = try container.decode([[String: Any]].self, forKey: .childs)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: SecondLevelChild
         Used By: Catalog
     */

    class SecondLevelChild: Codable {
        public var slug: String?

        public var banners: ImageUrls?

        public var action: Action?

        public var childs: [ThirdLevelChild]?

        public var customJson: [String: Any]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case banners

            case action

            case childs

            case customJson = "_custom_json"

            case name

            case uid
        }

        public init(action: Action?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.slug = slug

            self.banners = banners

            self.action = action

            self.childs = childs

            self.customJson = customJson

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> SecondLevelChild {
            let dict = self.dictionary!
            let copy = SecondLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                childs = try container.decode([ThirdLevelChild].self, forKey: .childs)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: Child
         Used By: Catalog
     */

    class Child: Codable {
        public var slug: String?

        public var banners: ImageUrls?

        public var action: Action?

        public var childs: [SecondLevelChild]?

        public var customJson: [String: Any]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case banners

            case action

            case childs

            case customJson = "_custom_json"

            case name

            case uid
        }

        public init(action: Action?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.slug = slug

            self.banners = banners

            self.action = action

            self.childs = childs

            self.customJson = customJson

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> Child {
            let dict = self.dictionary!
            let copy = Child(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                childs = try container.decode([SecondLevelChild].self, forKey: .childs)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: CategoryItems
         Used By: Catalog
     */

    class CategoryItems: Codable {
        public var slug: String?

        public var banners: ImageUrls?

        public var action: Action?

        public var childs: [Child]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case banners

            case action

            case childs

            case name

            case uid
        }

        public init(action: Action?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
            self.slug = slug

            self.banners = banners

            self.action = action

            self.childs = childs

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> CategoryItems {
            let dict = self.dictionary!
            let copy = CategoryItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                childs = try container.decode([Child].self, forKey: .childs)

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

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var page: Page

        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
            self.page = page

            self.items = items

            self.sortOn = sortOn

            self.filters = filters
        }

        public func duplicate() -> ApplicationProductListingResponse {
            let dict = self.dictionary!
            let copy = ApplicationProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }

    /*
         Model: ProductDetail
         Used By: Catalog
     */

    class ProductDetail: Codable {
        public var shortDescription: String?

        public var attributes: [String: Any]?

        public var description: String?

        public var teaserTag: [String: Any]?

        public var productOnlineDate: String?

        public var brand: ProductBrand?

        public var highlights: [String]?

        public var itemType: String?

        public var color: String?

        public var type: String?

        public var rating: Double?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var itemCode: String?

        public var tryouts: [String]?

        public var hasVariant: Bool?

        public var promoMeta: [String: Any]?

        public var imageNature: String?

        public var slug: String

        public var similars: [String]?

        public var medias: [Media1]?

        public var ratingCount: Int?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case shortDescription = "short_description"

            case attributes

            case description

            case teaserTag = "teaser_tag"

            case productOnlineDate = "product_online_date"

            case brand

            case highlights

            case itemType = "item_type"

            case color

            case type

            case rating

            case groupedAttributes = "grouped_attributes"

            case itemCode = "item_code"

            case tryouts

            case hasVariant = "has_variant"

            case promoMeta = "promo_meta"

            case imageNature = "image_nature"

            case slug

            case similars

            case medias

            case ratingCount = "rating_count"

            case name

            case uid
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.shortDescription = shortDescription

            self.attributes = attributes

            self.description = description

            self.teaserTag = teaserTag

            self.productOnlineDate = productOnlineDate

            self.brand = brand

            self.highlights = highlights

            self.itemType = itemType

            self.color = color

            self.type = type

            self.rating = rating

            self.groupedAttributes = groupedAttributes

            self.itemCode = itemCode

            self.tryouts = tryouts

            self.hasVariant = hasVariant

            self.promoMeta = promoMeta

            self.imageNature = imageNature

            self.slug = slug

            self.similars = similars

            self.medias = medias

            self.ratingCount = ratingCount

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> ProductDetail {
            let dict = self.dictionary!
            let copy = ProductDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                description = try container.decode(String.self, forKey: .description)

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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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
                color = try container.decode(String.self, forKey: .color)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                similars = try container.decode([String].self, forKey: .similars)

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
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

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

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: ArticleQuery
         Used By: Catalog
     */

    class ArticleQuery: Codable {
        public var ignoredStores: [Int]?

        public var itemId: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case ignoredStores = "ignored_stores"

            case itemId = "item_id"

            case size
        }

        public init(ignoredStores: [Int]?, itemId: Int, size: String) {
            self.ignoredStores = ignoredStores

            self.itemId = itemId

            self.size = size
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

            itemId = try container.decode(Int.self, forKey: .itemId)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }

    /*
         Model: AssignStoreArticle
         Used By: Catalog
     */

    class AssignStoreArticle: Codable {
        public var query: ArticleQuery?

        public var articleAssignment: ArticleAssignment?

        public var quantity: Int?

        public var meta: [String: Any]?

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case articleAssignment = "article_assignment"

            case quantity

            case meta

            case groupId = "group_id"
        }

        public init(articleAssignment: ArticleAssignment?, groupId: String?, meta: [String: Any]?, quantity: Int?, query: ArticleQuery?) {
            self.query = query

            self.articleAssignment = articleAssignment

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
                query = try container.decode(ArticleQuery.self, forKey: .query)

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

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

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
        public var channelType: String?

        public var companyId: Int?

        public var channelIdentifier: String?

        public var storeIds: [Int]?

        public var articles: [AssignStoreArticle]

        public var pincode: String

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case channelType = "channel_type"

            case companyId = "company_id"

            case channelIdentifier = "channel_identifier"

            case storeIds = "store_ids"

            case articles

            case pincode

            case appId = "app_id"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String?, channelType: String?, companyId: Int?, pincode: String, storeIds: [Int]?) {
            self.channelType = channelType

            self.companyId = companyId

            self.channelIdentifier = channelIdentifier

            self.storeIds = storeIds

            self.articles = articles

            self.pincode = pincode

            self.appId = appId
        }

        public func duplicate() -> AssignStore {
            let dict = self.dictionary!
            let copy = AssignStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

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
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            pincode = try container.decode(String.self, forKey: .pincode)

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(appId, forKey: .appId)
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
        public var storeId: Int?

        public var priceMarked: Int?

        public var status: Bool

        public var articleAssignment: ArticleAssignment1

        public var companyId: Int?

        public var priceEffective: Int?

        public var quantity: Int

        public var meta: [String: Any]?

        public var storePincode: Int?

        public var id: String?

        public var strategyWiseListing: [[String: Any]]?

        public var groupId: String?

        public var size: String

        public var index: Int?

        public var sCity: String?

        public var itemId: Int

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case priceMarked = "price_marked"

            case status

            case articleAssignment = "article_assignment"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case quantity

            case meta

            case storePincode = "store_pincode"

            case id = "_id"

            case strategyWiseListing = "strategy_wise_listing"

            case groupId = "group_id"

            case size

            case index

            case sCity = "s_city"

            case itemId = "item_id"

            case uid
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int?, groupId: String?, index: Int?, itemId: Int, meta: [String: Any]?, priceEffective: Int?, priceMarked: Int?, quantity: Int, size: String, status: Bool, storeId: Int?, storePincode: Int?, strategyWiseListing: [[String: Any]]?, sCity: String?, uid: String?, id: String?) {
            self.storeId = storeId

            self.priceMarked = priceMarked

            self.status = status

            self.articleAssignment = articleAssignment

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.meta = meta

            self.storePincode = storePincode

            self.id = id

            self.strategyWiseListing = strategyWiseListing

            self.groupId = groupId

            self.size = size

            self.index = index

            self.sCity = sCity

            self.itemId = itemId

            self.uid = uid
        }

        public func duplicate() -> StoreAssignResponse {
            let dict = self.dictionary!
            let copy = StoreAssignResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

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

            status = try container.decode(Bool.self, forKey: .status)

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                index = try container.decode(Int.self, forKey: .index)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: SellerPhoneNumber
         Used By: Catalog
     */

    class SellerPhoneNumber: Codable {
        public var countryCode: Int

        public var number: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case number
        }

        public init(countryCode: Int, number: String) {
            self.countryCode = countryCode

            self.number = number
        }

        public func duplicate() -> SellerPhoneNumber {
            let dict = self.dictionary!
            let copy = SellerPhoneNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(Int.self, forKey: .countryCode)

            number = try container.decode(String.self, forKey: .number)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }

    /*
         Model: UserSerializer1
         Used By: Catalog
     */

    class UserSerializer1: Codable {
        public var userId: String?

        public var username: String?

        public var contact: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username

            case contact
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.username = username

            self.contact = contact
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)
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
        public var closing: LocationTimingSerializer?

        public var weekday: String

        public var open: Bool

        public var opening: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case closing

            case weekday

            case open

            case opening
        }

        public init(closing: LocationTimingSerializer?, open: Bool, opening: LocationTimingSerializer?, weekday: String) {
            self.closing = closing

            self.weekday = weekday

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

            do {
                closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weekday = try container.decode(String.self, forKey: .weekday)

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

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }

    /*
         Model: GetAddressSerializer
         Used By: Catalog
     */

    class GetAddressSerializer: Codable {
        public var latitude: Double?

        public var addressType: String?

        public var state: String?

        public var landmark: String?

        public var address1: String?

        public var city: String?

        public var country: String?

        public var countryCode: String?

        public var pincode: Int?

        public var address2: String?

        public var longitude: Double?

        public enum CodingKeys: String, CodingKey {
            case latitude

            case addressType = "address_type"

            case state

            case landmark

            case address1

            case city

            case country

            case countryCode = "country_code"

            case pincode

            case address2

            case longitude
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            self.latitude = latitude

            self.addressType = addressType

            self.state = state

            self.landmark = landmark

            self.address1 = address1

            self.city = city

            self.country = country

            self.countryCode = countryCode

            self.pincode = pincode

            self.address2 = address2

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
                state = try container.decode(String.self, forKey: .state)

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
                country = try container.decode(String.self, forKey: .country)

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
                pincode = try container.decode(Int.self, forKey: .pincode)

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
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }

    /*
         Model: UserSerializer2
         Used By: Catalog
     */

    class UserSerializer2: Codable {
        public var userId: String?

        public var username: String?

        public var contact: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username

            case contact
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.userId = userId

            self.username = username

            self.contact = contact
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }

    /*
         Model: GetCompanySerializer
         Used By: Catalog
     */

    class GetCompanySerializer: Codable {
        public var stage: String?

        public var addresses: [GetAddressSerializer]?

        public var modifiedOn: String?

        public var companyType: String?

        public var verifiedOn: String?

        public var rejectReason: String?

        public var businessType: String?

        public var name: String?

        public var createdBy: UserSerializer2?

        public var modifiedBy: UserSerializer2?

        public var verifiedBy: UserSerializer2?

        public var createdOn: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case stage

            case addresses

            case modifiedOn = "modified_on"

            case companyType = "company_type"

            case verifiedOn = "verified_on"

            case rejectReason = "reject_reason"

            case businessType = "business_type"

            case name

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case verifiedBy = "verified_by"

            case createdOn = "created_on"

            case uid
        }

        public init(addresses: [GetAddressSerializer]?, businessType: String?, companyType: String?, createdBy: UserSerializer2?, createdOn: String?, modifiedBy: UserSerializer2?, modifiedOn: String?, name: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer2?, verifiedOn: String?) {
            self.stage = stage

            self.addresses = addresses

            self.modifiedOn = modifiedOn

            self.companyType = companyType

            self.verifiedOn = verifiedOn

            self.rejectReason = rejectReason

            self.businessType = businessType

            self.name = name

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.verifiedBy = verifiedBy

            self.createdOn = createdOn

            self.uid = uid
        }

        public func duplicate() -> GetCompanySerializer {
            let dict = self.dictionary!
            let copy = GetCompanySerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                createdBy = try container.decode(UserSerializer2.self, forKey: .createdBy)

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
                verifiedBy = try container.decode(UserSerializer2.self, forKey: .verifiedBy)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
         Model: ProductReturnConfigSerializer
         Used By: Catalog
     */

    class ProductReturnConfigSerializer: Codable {
        public var onSameStore: Bool?

        public var storeUid: Int?

        public enum CodingKeys: String, CodingKey {
            case onSameStore = "on_same_store"

            case storeUid = "store_uid"
        }

        public init(onSameStore: Bool?, storeUid: Int?) {
            self.onSameStore = onSameStore

            self.storeUid = storeUid
        }

        public func duplicate() -> ProductReturnConfigSerializer {
            let dict = self.dictionary!
            let copy = ProductReturnConfigSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                onSameStore = try container.decode(Bool.self, forKey: .onSameStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeUid = try container.decode(Int.self, forKey: .storeUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)

            try? container.encodeIfPresent(storeUid, forKey: .storeUid)
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
        public var eWaybill: InvoiceCredSerializer?

        public var eInvoice: InvoiceCredSerializer?

        public enum CodingKeys: String, CodingKey {
            case eWaybill = "e_waybill"

            case eInvoice = "e_invoice"
        }

        public init(eInvoice: InvoiceCredSerializer?, eWaybill: InvoiceCredSerializer?) {
            self.eWaybill = eWaybill

            self.eInvoice = eInvoice
        }

        public func duplicate() -> InvoiceDetailsSerializer {
            let dict = self.dictionary!
            let copy = InvoiceDetailsSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eWaybill = try container.decode(InvoiceCredSerializer.self, forKey: .eWaybill)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eInvoice = try container.decode(InvoiceCredSerializer.self, forKey: .eInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)

            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
        }
    }

    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var value: String

        public var url: String?

        public var legalName: String?

        public var type: String

        public var verified: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case url

            case legalName = "legal_name"

            case type

            case verified
        }

        public init(legalName: String?, type: String, url: String?, value: String, verified: Bool?) {
            self.value = value

            self.url = url

            self.legalName = legalName

            self.type = type

            self.verified = verified
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

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(verified, forKey: .verified)
        }
    }

    /*
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var modifiedOn: String?

        public var contactNumbers: [SellerPhoneNumber]?

        public var warnings: [String: Any]?

        public var createdBy: UserSerializer1?

        public var timing: [LocationDayWiseSerializer]?

        public var storeType: String?

        public var verifiedBy: UserSerializer1?

        public var company: GetCompanySerializer?

        public var integrationType: LocationIntegrationType?

        public var customJson: [String: Any]?

        public var displayName: String

        public var address: GetAddressSerializer

        public var createdOn: String?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var manager: LocationManagerSerializer?

        public var stage: String?

        public var phoneNumber: String

        public var gstCredentials: InvoiceDetailsSerializer?

        public var verifiedOn: String?

        public var notificationEmails: [String]?

        public var name: String

        public var modifiedBy: UserSerializer1?

        public var documents: [Document]?

        public var code: String

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case contactNumbers = "contact_numbers"

            case warnings

            case createdBy = "created_by"

            case timing

            case storeType = "store_type"

            case verifiedBy = "verified_by"

            case company

            case integrationType = "integration_type"

            case customJson = "_custom_json"

            case displayName = "display_name"

            case address

            case createdOn = "created_on"

            case productReturnConfig = "product_return_config"

            case manager

            case stage

            case phoneNumber = "phone_number"

            case gstCredentials = "gst_credentials"

            case verifiedOn = "verified_on"

            case notificationEmails = "notification_emails"

            case name

            case modifiedBy = "modified_by"

            case documents

            case code

            case uid
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer?, contactNumbers: [SellerPhoneNumber]?, createdBy: UserSerializer1?, createdOn: String?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, integrationType: LocationIntegrationType?, manager: LocationManagerSerializer?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, notificationEmails: [String]?, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            self.modifiedOn = modifiedOn

            self.contactNumbers = contactNumbers

            self.warnings = warnings

            self.createdBy = createdBy

            self.timing = timing

            self.storeType = storeType

            self.verifiedBy = verifiedBy

            self.company = company

            self.integrationType = integrationType

            self.customJson = customJson

            self.displayName = displayName

            self.address = address

            self.createdOn = createdOn

            self.productReturnConfig = productReturnConfig

            self.manager = manager

            self.stage = stage

            self.phoneNumber = phoneNumber

            self.gstCredentials = gstCredentials

            self.verifiedOn = verifiedOn

            self.notificationEmails = notificationEmails

            self.name = name

            self.modifiedBy = modifiedBy

            self.documents = documents

            self.code = code

            self.uid = uid
        }

        public func duplicate() -> GetLocationSerializer {
            let dict = self.dictionary!
            let copy = GetLocationSerializer(dictionary: dict)!
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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)

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
                storeType = try container.decode(String.self, forKey: .storeType)

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
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

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

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)

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

            code = try container.decode(String.self, forKey: .code)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)
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

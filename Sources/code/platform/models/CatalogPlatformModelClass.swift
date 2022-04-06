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
        public var customJson: [String: Any]?

        public var words: [String]?

        public var result: SearchKeywordResult

        public var isActive: Bool?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case words

            case result

            case isActive = "is_active"

            case appId = "app_id"
        }

        public init(appId: String?, isActive: Bool?, result: SearchKeywordResult, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.words = words

            self.result = result

            self.isActive = isActive

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
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

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
         Model: ErrorResponse
         Used By: Catalog
     */

    class ErrorResponse: Codable {
        public var code: String?

        public var status: Int?

        public var message: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case status

            case message

            case meta
        }

        public init(code: String?, message: String?, meta: [String: Any]?, status: Int?) {
            self.code = code

            self.status = status

            self.message = message

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

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

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
        public var query: [String: Any]?

        public var url: String?

        public var params: [String: Any]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case url

            case params

            case type
        }

        public init(params: [String: Any]?, query: [String: Any]?, type: String?, url: String?) {
            self.query = query

            self.url = url

            self.params = params

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(params, forKey: .params)

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
         Model: AutocompleteResult
         Used By: Catalog
     */

    class AutocompleteResult: Codable {
        public var logo: Media?

        public var customJson: [String: Any]?

        public var display: String?

        public var action: AutocompleteAction?

        public enum CodingKeys: String, CodingKey {
            case logo

            case customJson = "_custom_json"

            case display

            case action
        }

        public init(action: AutocompleteAction?, display: String?, logo: Media?, customJson: [String: Any]?) {
            self.logo = logo

            self.customJson = customJson

            self.display = display

            self.action = action
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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                action = try container.decode(AutocompleteAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }

    /*
         Model: CreateAutocompleteKeyword
         Used By: Catalog
     */

    class CreateAutocompleteKeyword: Codable {
        public var customJson: [String: Any]?

        public var results: [AutocompleteResult]?

        public var words: [String]?

        public var isActive: Bool?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case results

            case words

            case isActive = "is_active"

            case appId = "app_id"
        }

        public init(appId: String?, isActive: Bool?, results: [AutocompleteResult]?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.results = results

            self.words = words

            self.isActive = isActive

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var customJson: [String: Any]?

        public var uid: String?

        public var results: [[String: Any]]?

        public var words: [String]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case uid

            case results

            case words

            case appId = "app_id"
        }

        public init(appId: String?, results: [[String: Any]]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.uid = uid

            self.results = results

            self.words = words

            self.appId = appId
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
                results = try container.decode([[String: Any]].self, forKey: .results)

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

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
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
        public var customJson: [String: Any]?

        public var results: [[String: Any]]?

        public var words: [String]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case results

            case words

            case appId = "app_id"
        }

        public init(appId: String?, results: [[String: Any]]?, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.results = results

            self.words = words

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

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var autoSelect: Bool?

        public var autoAddToCart: Bool?

        public var allowRemove: Bool?

        public var minQuantity: Int

        public var maxQuantity: Int

        public var productUid: Int

        public enum CodingKeys: String, CodingKey {
            case autoSelect = "auto_select"

            case autoAddToCart = "auto_add_to_cart"

            case allowRemove = "allow_remove"

            case minQuantity = "min_quantity"

            case maxQuantity = "max_quantity"

            case productUid = "product_uid"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.autoSelect = autoSelect

            self.autoAddToCart = autoAddToCart

            self.allowRemove = allowRemove

            self.minQuantity = minQuantity

            self.maxQuantity = maxQuantity

            self.productUid = productUid
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

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            productUid = try container.decode(Int.self, forKey: .productUid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)
        }
    }

    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var name: String

        public var modifiedOn: String?

        public var isActive: Bool

        public var logo: String?

        public var pageVisibility: [String]?

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var sameStoreAssignment: Bool?

        public var meta: [String: Any]?

        public var products: [ProductBundleItem]

        public var createdOn: String?

        public var choice: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case name

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case logo

            case pageVisibility = "page_visibility"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case sameStoreAssignment = "same_store_assignment"

            case meta

            case products

            case createdOn = "created_on"

            case choice

            case slug
        }

        public init(choice: String, createdBy: [String: Any]?, createdOn: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.name = name

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.logo = logo

            self.pageVisibility = pageVisibility

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.sameStoreAssignment = sameStoreAssignment

            self.meta = meta

            self.products = products

            self.createdOn = createdOn

            self.choice = choice

            self.slug = slug
        }

        public func duplicate() -> ProductBundleRequest {
            let dict = self.dictionary!
            let copy = ProductBundleRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

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
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            choice = try container.decode(String.self, forKey: .choice)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: GetProductBundleCreateResponse
         Used By: Catalog
     */

    class GetProductBundleCreateResponse: Codable {
        public var name: String

        public var modifiedOn: String?

        public var isActive: Bool

        public var logo: String?

        public var pageVisibility: [String]?

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var companyId: Int?

        public var sameStoreAssignment: Bool?

        public var meta: [String: Any]?

        public var products: [ProductBundleItem]

        public var createdOn: String?

        public var id: String?

        public var choice: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case name

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case logo

            case pageVisibility = "page_visibility"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case companyId = "company_id"

            case sameStoreAssignment = "same_store_assignment"

            case meta

            case products

            case createdOn = "created_on"

            case id

            case choice

            case slug
        }

        public init(choice: String, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, id: String?, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.name = name

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.logo = logo

            self.pageVisibility = pageVisibility

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.companyId = companyId

            self.sameStoreAssignment = sameStoreAssignment

            self.meta = meta

            self.products = products

            self.createdOn = createdOn

            self.id = id

            self.choice = choice

            self.slug = slug
        }

        public func duplicate() -> GetProductBundleCreateResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleCreateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)

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

            choice = try container.decode(String.self, forKey: .choice)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(slug, forKey: .slug)
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
        public var name: String

        public var modifiedOn: String?

        public var isActive: Bool

        public var logo: String?

        public var pageVisibility: [String]?

        public var modifiedBy: [String: Any]?

        public var sameStoreAssignment: Bool?

        public var meta: [String: Any]?

        public var products: [ProductBundleItem]

        public var choice: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case name

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case logo

            case pageVisibility = "page_visibility"

            case modifiedBy = "modified_by"

            case sameStoreAssignment = "same_store_assignment"

            case meta

            case products

            case choice

            case slug
        }

        public init(choice: String, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.name = name

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.logo = logo

            self.pageVisibility = pageVisibility

            self.modifiedBy = modifiedBy

            self.sameStoreAssignment = sameStoreAssignment

            self.meta = meta

            self.products = products

            self.choice = choice

            self.slug = slug
        }

        public func duplicate() -> ProductBundleUpdateRequest {
            let dict = self.dictionary!
            let copy = ProductBundleUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            choice = try container.decode(String.self, forKey: .choice)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: Size
         Used By: Catalog
     */

    class Size: Codable {
        public var quantity: Int?

        public var display: String?

        public var value: String?

        public var isAvailable: Bool?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case display

            case value

            case isAvailable = "is_available"
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.quantity = quantity

            self.display = display

            self.value = value

            self.isAvailable = isAvailable
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

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        }
    }

    /*
         Model: Price
         Used By: Catalog
     */

    class Price: Codable {
        public var minEffective: Double?

        public var currency: String?

        public var maxEffective: Double?

        public var minMarked: Double?

        public var maxMarked: Double?

        public enum CodingKeys: String, CodingKey {
            case minEffective = "min_effective"

            case currency

            case maxEffective = "max_effective"

            case minMarked = "min_marked"

            case maxMarked = "max_marked"
        }

        public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
            self.minEffective = minEffective

            self.currency = currency

            self.maxEffective = maxEffective

            self.minMarked = minMarked

            self.maxMarked = maxMarked
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
        }
    }

    /*
         Model: LimitedProductData
         Used By: Catalog
     */

    class LimitedProductData: Codable {
        public var sizes: [String]?

        public var countryOfOrigin: String?

        public var name: String?

        public var images: [String]?

        public var identifier: [String: Any]?

        public var uid: Int?

        public var quantity: Int?

        public var shortDescription: String?

        public var price: [String: Any]?

        public var attributes: [String: Any]?

        public var slug: String?

        public var itemCode: String?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case countryOfOrigin = "country_of_origin"

            case name

            case images

            case identifier

            case uid

            case quantity

            case shortDescription = "short_description"

            case price

            case attributes

            case slug

            case itemCode = "item_code"
        }

        public init(attributes: [String: Any]?, countryOfOrigin: String?, identifier: [String: Any]?, images: [String]?, itemCode: String?, name: String?, price: [String: Any]?, quantity: Int?, shortDescription: String?, sizes: [String]?, slug: String?, uid: Int?) {
            self.sizes = sizes

            self.countryOfOrigin = countryOfOrigin

            self.name = name

            self.images = images

            self.identifier = identifier

            self.uid = uid

            self.quantity = quantity

            self.shortDescription = shortDescription

            self.price = price

            self.attributes = attributes

            self.slug = slug

            self.itemCode = itemCode
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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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
                images = try container.decode([String].self, forKey: .images)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
        }
    }

    /*
         Model: GetProducts
         Used By: Catalog
     */

    class GetProducts: Codable {
        public var sizes: [Size]?

        public var autoAddToCart: Bool?

        public var autoSelect: Bool?

        public var allowRemove: Bool?

        public var minQuantity: Int?

        public var price: Price?

        public var maxQuantity: Int?

        public var productDetails: LimitedProductData?

        public var productUid: Int?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case autoAddToCart = "auto_add_to_cart"

            case autoSelect = "auto_select"

            case allowRemove = "allow_remove"

            case minQuantity = "min_quantity"

            case price

            case maxQuantity = "max_quantity"

            case productDetails = "product_details"

            case productUid = "product_uid"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price?, productDetails: LimitedProductData?, productUid: Int?, sizes: [Size]?) {
            self.sizes = sizes

            self.autoAddToCart = autoAddToCart

            self.autoSelect = autoSelect

            self.allowRemove = allowRemove

            self.minQuantity = minQuantity

            self.price = price

            self.maxQuantity = maxQuantity

            self.productDetails = productDetails

            self.productUid = productUid
        }

        public func duplicate() -> GetProducts {
            let dict = self.dictionary!
            let copy = GetProducts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

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
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

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
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

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
                productUid = try container.decode(Int.self, forKey: .productUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(productUid, forKey: .productUid)
        }
    }

    /*
         Model: GetProductBundleResponse
         Used By: Catalog
     */

    class GetProductBundleResponse: Codable {
        public var name: String?

        public var isActive: Bool?

        public var pageVisibility: [String]?

        public var logo: String?

        public var sameStoreAssignment: Bool?

        public var products: [GetProducts]?

        public var companyId: Int?

        public var meta: [String: Any]?

        public var choice: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isActive = "is_active"

            case pageVisibility = "page_visibility"

            case logo

            case sameStoreAssignment = "same_store_assignment"

            case products

            case companyId = "company_id"

            case meta

            case choice

            case slug
        }

        public init(choice: String?, companyId: Int?, isActive: Bool?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [GetProducts]?, sameStoreAssignment: Bool?, slug: String?) {
            self.name = name

            self.isActive = isActive

            self.pageVisibility = pageVisibility

            self.logo = logo

            self.sameStoreAssignment = sameStoreAssignment

            self.products = products

            self.companyId = companyId

            self.meta = meta

            self.choice = choice

            self.slug = slug
        }

        public func duplicate() -> GetProductBundleResponse {
            let dict = self.dictionary!
            let copy = GetProductBundleResponse(dictionary: dict)!
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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                logo = try container.decode(String.self, forKey: .logo)

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
                products = try container.decode([GetProducts].self, forKey: .products)

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

            do {
                choice = try container.decode(String.self, forKey: .choice)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(slug, forKey: .slug)
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
        public var subtitle: String?

        public var title: String

        public var tag: String?

        public var name: String

        public var active: Bool?

        public var description: String?

        public var guide: Guide?

        public var modifiedOn: String?

        public var createdBy: [String: Any]?

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var id: String?

        public var createdOn: String?

        public var brandId: Int?

        public var image: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case title

            case tag

            case name

            case active

            case description

            case guide

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case id

            case createdOn = "created_on"

            case brandId = "brand_id"

            case image
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, description: String?, guide: Guide?, id: String?, image: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, subtitle: String?, tag: String?, title: String) {
            self.subtitle = subtitle

            self.title = title

            self.tag = tag

            self.name = name

            self.active = active

            self.description = description

            self.guide = guide

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.id = id

            self.createdOn = createdOn

            self.brandId = brandId

            self.image = image
        }

        public func duplicate() -> ValidateSizeGuide {
            let dict = self.dictionary!
            let copy = ValidateSizeGuide(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

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

            do {
                guide = try container.decode(Guide.self, forKey: .guide)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                brandId = try container.decode(Int.self, forKey: .brandId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(image, forKey: .image)
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
        public var subtitle: String?

        public var title: String?

        public var tag: String?

        public var name: String?

        public var active: Bool?

        public var guide: [String: Any]?

        public var modifiedOn: String?

        public var createdBy: [String: Any]?

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var id: String?

        public var createdOn: String?

        public var brandId: Int?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case title

            case tag

            case name

            case active

            case guide

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case id

            case createdOn = "created_on"

            case brandId = "brand_id"
        }

        public init(active: Bool?, brandId: Int?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, guide: [String: Any]?, id: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, subtitle: String?, tag: String?, title: String?) {
            self.subtitle = subtitle

            self.title = title

            self.tag = tag

            self.name = name

            self.active = active

            self.guide = guide

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.id = id

            self.createdOn = createdOn

            self.brandId = brandId
        }

        public func duplicate() -> SizeGuideResponse {
            let dict = self.dictionary!
            let copy = SizeGuideResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

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
                tag = try container.decode(String.self, forKey: .tag)

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
                active = try container.decode(Bool.self, forKey: .active)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(brandId, forKey: .brandId)
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

        public var compare: [String: Any]?

        public var similar: [String: Any]?

        public var variant: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case detail

            case compare

            case similar

            case variant
        }

        public init(compare: [String: Any]?, detail: [String: Any]?, similar: [String: Any]?, variant: [String: Any]?) {
            self.detail = detail

            self.compare = compare

            self.similar = similar

            self.variant = variant
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(detail, forKey: .detail)

            try? container.encodeIfPresent(compare, forKey: .compare)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(variant, forKey: .variant)
        }
    }

    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var filterTypes: [String]?

        public var display: String?

        public var key: String?

        public var units: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case filterTypes = "filter_types"

            case display

            case key

            case units
        }

        public init(display: String?, filterTypes: [String]?, key: String?, units: [[String: Any]]?) {
            self.filterTypes = filterTypes

            self.display = display

            self.key = key

            self.units = units
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(units, forKey: .units)
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
         Model: MetaDataListingResponse
         Used By: Catalog
     */

    class MetaDataListingResponse: Codable {
        public var filter: MetaDataListingFilterResponse

        public var sort: MetaDataListingSortResponse

        public enum CodingKeys: String, CodingKey {
            case filter

            case sort
        }

        public init(filter: MetaDataListingFilterResponse, sort: MetaDataListingSortResponse) {
            self.filter = filter

            self.sort = sort
        }

        public func duplicate() -> MetaDataListingResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filter = try container.decode(MetaDataListingFilterResponse.self, forKey: .filter)

            sort = try container.decode(MetaDataListingSortResponse.self, forKey: .sort)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filter, forKey: .filter)

            try? container.encodeIfPresent(sort, forKey: .sort)
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
         Model: ConfigurationProductConfig
         Used By: Catalog
     */

    class ConfigurationProductConfig: Codable {
        public var subtitle: String?

        public var title: String?

        public var size: ProductSize?

        public var priority: Int

        public var logo: String?

        public var key: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case title

            case size

            case priority

            case logo

            case key

            case isActive = "is_active"
        }

        public init(isActive: Bool, key: String, logo: String?, priority: Int, size: ProductSize?, subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.title = title

            self.size = size

            self.priority = priority

            self.logo = logo

            self.key = key

            self.isActive = isActive
        }

        public func duplicate() -> ConfigurationProductConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

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
                size = try container.decode(ProductSize.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
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
        public var size: ProductSize

        public var priority: Int

        public var name: String

        public var logo: String?

        public var displayType: String

        public var key: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case size

            case priority

            case name

            case logo

            case displayType = "display_type"

            case key

            case isActive = "is_active"
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String?, name: String, priority: Int, size: ProductSize) {
            self.size = size

            self.priority = priority

            self.name = name

            self.logo = logo

            self.displayType = displayType

            self.key = key

            self.isActive = isActive
        }

        public func duplicate() -> ConfigurationProductVariantConfig {
            let dict = self.dictionary!
            let copy = ConfigurationProductVariantConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(ProductSize.self, forKey: .size)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayType = try container.decode(String.self, forKey: .displayType)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
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
         Model: ConfigurationBucketPoints
         Used By: Catalog
     */

    class ConfigurationBucketPoints: Codable {
        public var start: Double?

        public var end: Double?

        public enum CodingKeys: String, CodingKey {
            case start

            case end
        }

        public init(end: Double?, start: Double?) {
            self.start = start

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
                end = try container.decode(Double.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }

    /*
         Model: ConfigurationListingFilterValue
         Used By: Catalog
     */

    class ConfigurationListingFilterValue: Codable {
        public var bucketPoints: [ConfigurationBucketPoints]?

        public var condition: String?

        public var map: [String: Any]?

        public var value: String?

        public var sort: String?

        public enum CodingKeys: String, CodingKey {
            case bucketPoints = "bucket_points"

            case condition

            case map

            case value

            case sort
        }

        public init(bucketPoints: [ConfigurationBucketPoints]?, condition: String?, map: [String: Any]?, sort: String?, value: String?) {
            self.bucketPoints = bucketPoints

            self.condition = condition

            self.map = map

            self.value = value

            self.sort = sort
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(map, forKey: .map)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(sort, forKey: .sort)
        }
    }

    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var priority: Int

        public var name: String?

        public var valueConfig: ConfigurationListingFilterValue?

        public var logo: String?

        public var key: String

        public var isActive: Bool

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case priority

            case name

            case valueConfig = "value_config"

            case logo

            case key

            case isActive = "is_active"

            case type
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue?) {
            self.priority = priority

            self.name = name

            self.valueConfig = valueConfig

            self.logo = logo

            self.key = key

            self.isActive = isActive

            self.type = type
        }

        public func duplicate() -> ConfigurationListingFilterConfig {
            let dict = self.dictionary!
            let copy = ConfigurationListingFilterConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

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
         Model: ConfigurationListingSortConfig
         Used By: Catalog
     */

    class ConfigurationListingSortConfig: Codable {
        public var priority: Int

        public var name: String?

        public var logo: String?

        public var key: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case priority

            case name

            case logo

            case key

            case isActive = "is_active"
        }

        public init(isActive: Bool, key: String, logo: String?, name: String?, priority: Int) {
            self.priority = priority

            self.name = name

            self.logo = logo

            self.key = key

            self.isActive = isActive
        }

        public func duplicate() -> ConfigurationListingSortConfig {
            let dict = self.dictionary!
            let copy = ConfigurationListingSortConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
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
         Model: ConfigurationListing
         Used By: Catalog
     */

    class ConfigurationListing: Codable {
        public var filter: ConfigurationListingFilter

        public var sort: ConfigurationListingSort

        public enum CodingKeys: String, CodingKey {
            case filter

            case sort
        }

        public init(filter: ConfigurationListingFilter, sort: ConfigurationListingSort) {
            self.filter = filter

            self.sort = sort
        }

        public func duplicate() -> ConfigurationListing {
            let dict = self.dictionary!
            let copy = ConfigurationListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filter = try container.decode(ConfigurationListingFilter.self, forKey: .filter)

            sort = try container.decode(ConfigurationListingSort.self, forKey: .sort)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filter, forKey: .filter)

            try? container.encodeIfPresent(sort, forKey: .sort)
        }
    }

    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var configType: String

        public var configId: String?

        public var product: ConfigurationProduct?

        public var listing: ConfigurationListing?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case configId = "config_id"

            case product

            case listing

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.configType = configType

            self.configId = configId

            self.product = product

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

            configType = try container.decode(String.self, forKey: .configType)

            do {
                configId = try container.decode(String.self, forKey: .configId)

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
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var configType: String

        public var configId: String?

        public var id: String?

        public var product: ConfigurationProduct?

        public var listing: ConfigurationListing?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case configId = "config_id"

            case id

            case product

            case listing

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.configType = configType

            self.configId = configId

            self.id = id

            self.product = product

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

            configType = try container.decode(String.self, forKey: .configType)

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

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

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

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)
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
        public var filter: [String: Any]?

        public var sort: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case filter

            case sort
        }

        public init(filter: [String: Any]?, sort: [String: Any]?) {
            self.filter = filter

            self.sort = sort
        }

        public func duplicate() -> GetCatalogConfigurationDetailsSchemaListing {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationDetailsSchemaListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filter = try container.decode([String: Any].self, forKey: .filter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sort = try container.decode([String: Any].self, forKey: .sort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filter, forKey: .filter)

            try? container.encodeIfPresent(sort, forKey: .sort)
        }
    }

    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var configType: String

        public var configId: String?

        public var id: String?

        public var product: GetCatalogConfigurationDetailsProduct?

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case configId = "config_id"

            case id

            case product

            case listing

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, id: String?, listing: GetCatalogConfigurationDetailsSchemaListing?, product: GetCatalogConfigurationDetailsProduct?) {
            self.configType = configType

            self.configId = configId

            self.id = id

            self.product = product

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

            configType = try container.decode(String.self, forKey: .configType)

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

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

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

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(appId, forKey: .appId)
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
        public var logo: String?

        public var display: String

        public var kind: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case display

            case kind

            case name
        }

        public init(display: String, kind: String?, logo: String?, name: String) {
            self.logo = logo

            self.display = display

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

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

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

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */

    class ProductFiltersValue: Codable {
        public var selectedMax: Int?

        public var display: String

        public var min: Int?

        public var count: Int?

        public var displayFormat: String?

        public var max: Int?

        public var isSelected: Bool

        public var currencySymbol: String?

        public var queryFormat: String?

        public var currencyCode: String?

        public var value: String

        public var selectedMin: Int?

        public enum CodingKeys: String, CodingKey {
            case selectedMax = "selected_max"

            case display

            case min

            case count

            case displayFormat = "display_format"

            case max

            case isSelected = "is_selected"

            case currencySymbol = "currency_symbol"

            case queryFormat = "query_format"

            case currencyCode = "currency_code"

            case value

            case selectedMin = "selected_min"
        }

        public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String) {
            self.selectedMax = selectedMax

            self.display = display

            self.min = min

            self.count = count

            self.displayFormat = displayFormat

            self.max = max

            self.isSelected = isSelected

            self.currencySymbol = currencySymbol

            self.queryFormat = queryFormat

            self.currencyCode = currencyCode

            self.value = value

            self.selectedMin = selectedMin
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
                min = try container.decode(Int.self, forKey: .min)

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

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
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
        public var value: String?

        public var isSelected: Bool?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case isSelected = "is_selected"

            case name
        }

        public init(isSelected: Bool?, name: String?, value: String?) {
            self.value = value

            self.isSelected = isSelected

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
                value = try container.decode(String.self, forKey: .value)

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

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(name, forKey: .name)
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
         Model: SeoDetail
         Used By: Catalog
     */

    class SeoDetail: Codable {
        public var title: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case description
        }

        public init(description: String?, title: String?) {
            self.title = title

            self.description = description
        }

        public func duplicate() -> SeoDetail {
            let dict = self.dictionary!
            let copy = SeoDetail(dictionary: dict)!
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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: UserInfo
         Used By: Catalog
     */

    class UserInfo: Codable {
        public var uid: String?

        public var username: String?

        public var email: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case username

            case email

            case userId = "user_id"
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.uid = uid

            self.username = username

            self.email = email

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

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(userId, forKey: .userId)
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
         Model: Schedule
         Used By: Catalog
     */

    class Schedule: Codable {
        public var duration: Int?

        public var start: String?

        public var cron: String?

        public var end: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case start

            case cron

            case end
        }

        public init(cron: String?, duration: Int?, end: String?, start: String?) {
            self.duration = duration

            self.start = start

            self.cron = cron

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
                duration = try container.decode(Int.self, forKey: .duration)

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

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(cron, forKey: .cron)

            try? container.encode(end, forKey: .end)
        }
    }

    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var description: String?

        public var visibleFacetsKeys: [String]?

        public var logo: CollectionImage

        public var sortOn: String?

        public var meta: [String: Any]?

        public var isVisible: Bool?

        public var type: String

        public var name: String

        public var seo: SeoDetail?

        public var tags: [String]?

        public var localeLanguage: [String: Any]?

        public var modifiedBy: UserInfo?

        public var allowFacets: Bool?

        public var published: Bool?

        public var isActive: Bool?

        public var slug: String

        public var allowSort: Bool?

        public var customJson: [String: Any]?

        public var badge: CollectionBadge?

        public var appId: String

        public var banners: CollectionBanner

        public var query: [String: Any]?

        public var schedule: Schedule?

        public var createdBy: UserInfo?

        public enum CodingKeys: String, CodingKey {
            case description

            case visibleFacetsKeys = "visible_facets_keys"

            case logo

            case sortOn = "sort_on"

            case meta

            case isVisible = "is_visible"

            case type

            case name

            case seo

            case tags

            case localeLanguage = "_locale_language"

            case modifiedBy = "modified_by"

            case allowFacets = "allow_facets"

            case published

            case isActive = "is_active"

            case slug

            case allowSort = "allow_sort"

            case customJson = "_custom_json"

            case badge

            case appId = "app_id"

            case banners

            case query

            case schedule = "_schedule"

            case createdBy = "created_by"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String, badge: CollectionBadge?, banners: CollectionBanner, createdBy: UserInfo?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage, meta: [String: Any]?, modifiedBy: UserInfo?, name: String, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String, sortOn: String?, tags: [String]?, type: String, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.description = description

            self.visibleFacetsKeys = visibleFacetsKeys

            self.logo = logo

            self.sortOn = sortOn

            self.meta = meta

            self.isVisible = isVisible

            self.type = type

            self.name = name

            self.seo = seo

            self.tags = tags

            self.localeLanguage = localeLanguage

            self.modifiedBy = modifiedBy

            self.allowFacets = allowFacets

            self.published = published

            self.isActive = isActive

            self.slug = slug

            self.allowSort = allowSort

            self.customJson = customJson

            self.badge = badge

            self.appId = appId

            self.banners = banners

            self.query = query

            self.schedule = schedule

            self.createdBy = createdBy
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
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

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
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                query = try container.decode([String: Any].self, forKey: .query)

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
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encode(createdBy, forKey: .createdBy)
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
        public var allowSort: Bool?

        public var tag: [String]?

        public var slug: String?

        public var description: String?

        public var name: String?

        public var query: [String: Any]?

        public var visibleFacetsKeys: [String]?

        public var schedule: [String: Any]?

        public var logo: BannerImage?

        public var type: String?

        public var allowFacets: Bool?

        public var cron: [String: Any]?

        public var meta: [String: Any]?

        public var badge: [String: Any]?

        public var isActive: Bool?

        public var appId: String?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case allowSort = "allow_sort"

            case tag

            case slug

            case description

            case name

            case query

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case logo

            case type

            case allowFacets = "allow_facets"

            case cron

            case meta

            case badge

            case isActive = "is_active"

            case appId = "app_id"

            case banners
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: BannerImage?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.allowSort = allowSort

            self.tag = tag

            self.slug = slug

            self.description = description

            self.name = name

            self.query = query

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.logo = logo

            self.type = type

            self.allowFacets = allowFacets

            self.cron = cron

            self.meta = meta

            self.badge = badge

            self.isActive = isActive

            self.appId = appId

            self.banners = banners
        }

        public func duplicate() -> CollectionCreateResponse {
            let dict = self.dictionary!
            let copy = CollectionCreateResponse(dictionary: dict)!
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
                tag = try container.decode([String].self, forKey: .tag)

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                logo = try container.decode(BannerImage.self, forKey: .logo)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(banners, forKey: .banners)
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
        public var tag: [String]?

        public var description: String?

        public var visibleFacetsKeys: [String]?

        public var logo: Media1?

        public var cron: [String: Any]?

        public var meta: [String: Any]?

        public var type: String?

        public var name: String?

        public var allowFacets: Bool?

        public var slug: String?

        public var isActive: Bool?

        public var allowSort: Bool?

        public var badge: [String: Any]?

        public var appId: String?

        public var banners: ImageUrls?

        public var query: [String: Any]?

        public var uid: String?

        public var action: Action?

        public var schedule: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case tag

            case description

            case visibleFacetsKeys = "visible_facets_keys"

            case logo

            case cron

            case meta

            case type

            case name

            case allowFacets = "allow_facets"

            case slug

            case isActive = "is_active"

            case allowSort = "allow_sort"

            case badge

            case appId = "app_id"

            case banners

            case query

            case uid

            case action

            case schedule = "_schedule"
        }

        public init(action: Action?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.tag = tag

            self.description = description

            self.visibleFacetsKeys = visibleFacetsKeys

            self.logo = logo

            self.cron = cron

            self.meta = meta

            self.type = type

            self.name = name

            self.allowFacets = allowFacets

            self.slug = slug

            self.isActive = isActive

            self.allowSort = allowSort

            self.badge = badge

            self.appId = appId

            self.banners = banners

            self.query = query

            self.uid = uid

            self.action = action

            self.schedule = schedule
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
                logo = try container.decode(Media1.self, forKey: .logo)

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

            do {
                name = try container.decode(String.self, forKey: .name)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                appId = try container.decode(String.self, forKey: .appId)

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                action = try container.decode(Action.self, forKey: .action)

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

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: GetCollectionListingResponse
         Used By: Catalog
     */

    class GetCollectionListingResponse: Codable {
        public var filters: CollectionListingFilter?

        public var items: [GetCollectionDetailNest]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case filters

            case items

            case page
        }

        public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page?) {
            self.filters = filters

            self.items = items

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
                filters = try container.decode(CollectionListingFilter.self, forKey: .filters)

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
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CollectionDetailResponse
         Used By: Catalog
     */

    class CollectionDetailResponse: Codable {
        public var allowSort: Bool?

        public var tag: [String]?

        public var slug: String?

        public var description: String?

        public var name: String?

        public var query: [String: Any]?

        public var visibleFacetsKeys: [String]?

        public var schedule: [String: Any]?

        public var logo: Media1?

        public var type: String?

        public var allowFacets: Bool?

        public var cron: [String: Any]?

        public var meta: [String: Any]?

        public var badge: [String: Any]?

        public var isActive: Bool?

        public var appId: String?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case allowSort = "allow_sort"

            case tag

            case slug

            case description

            case name

            case query

            case visibleFacetsKeys = "visible_facets_keys"

            case schedule = "_schedule"

            case logo

            case type

            case allowFacets = "allow_facets"

            case cron

            case meta

            case badge

            case isActive = "is_active"

            case appId = "app_id"

            case banners
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media1?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.allowSort = allowSort

            self.tag = tag

            self.slug = slug

            self.description = description

            self.name = name

            self.query = query

            self.visibleFacetsKeys = visibleFacetsKeys

            self.schedule = schedule

            self.logo = logo

            self.type = type

            self.allowFacets = allowFacets

            self.cron = cron

            self.meta = meta

            self.badge = badge

            self.isActive = isActive

            self.appId = appId

            self.banners = banners
        }

        public func duplicate() -> CollectionDetailResponse {
            let dict = self.dictionary!
            let copy = CollectionDetailResponse(dictionary: dict)!
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
                tag = try container.decode([String].self, forKey: .tag)

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
                query = try container.decode([String: Any].self, forKey: .query)

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
                logo = try container.decode(Media1.self, forKey: .logo)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(banners, forKey: .banners)
        }
    }

    /*
         Model: UpdateCollection
         Used By: Catalog
     */

    class UpdateCollection: Codable {
        public var description: String?

        public var visibleFacetsKeys: [String]?

        public var logo: CollectionImage?

        public var sortOn: String?

        public var meta: [String: Any]?

        public var isVisible: Bool?

        public var name: String?

        public var seo: SeoDetail?

        public var tags: [String]?

        public var localeLanguage: [String: Any]?

        public var modifiedBy: UserInfo?

        public var allowFacets: Bool?

        public var published: Bool?

        public var isActive: Bool?

        public var slug: String?

        public var allowSort: Bool?

        public var customJson: [String: Any]?

        public var badge: CollectionBadge?

        public var banners: CollectionBanner?

        public var query: [String: Any]?

        public var schedule: Schedule?

        public enum CodingKeys: String, CodingKey {
            case description

            case visibleFacetsKeys = "visible_facets_keys"

            case logo

            case sortOn = "sort_on"

            case meta

            case isVisible = "is_visible"

            case name

            case seo

            case tags

            case localeLanguage = "_locale_language"

            case modifiedBy = "modified_by"

            case allowFacets = "allow_facets"

            case published

            case isActive = "is_active"

            case slug

            case allowSort = "allow_sort"

            case customJson = "_custom_json"

            case badge

            case banners

            case query

            case schedule = "_schedule"
        }

        public init(allowFacets: Bool?, allowSort: Bool?, badge: CollectionBadge?, banners: CollectionBanner?, description: String?, isActive: Bool?, isVisible: Bool?, logo: CollectionImage?, meta: [String: Any]?, modifiedBy: UserInfo?, name: String?, published: Bool?, query: [String: Any]?, seo: SeoDetail?, slug: String?, sortOn: String?, tags: [String]?, visibleFacetsKeys: [String]?, customJson: [String: Any]?, localeLanguage: [String: Any]?, schedule: Schedule?) {
            self.description = description

            self.visibleFacetsKeys = visibleFacetsKeys

            self.logo = logo

            self.sortOn = sortOn

            self.meta = meta

            self.isVisible = isVisible

            self.name = name

            self.seo = seo

            self.tags = tags

            self.localeLanguage = localeLanguage

            self.modifiedBy = modifiedBy

            self.allowFacets = allowFacets

            self.published = published

            self.isActive = isActive

            self.slug = slug

            self.allowSort = allowSort

            self.customJson = customJson

            self.badge = badge

            self.banners = banners

            self.query = query

            self.schedule = schedule
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
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

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
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

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
                query = try container.decode([String: Any].self, forKey: .query)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
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
         Model: ProductBrand
         Used By: Catalog
     */

    class ProductBrand: Codable {
        public var logo: Media1?

        public var uid: Int?

        public var action: Action?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case uid

            case action

            case name
        }

        public init(action: Action?, logo: Media1?, name: String?, uid: Int?) {
            self.logo = logo

            self.uid = uid

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

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var min: Double?

        public var currencyCode: String?

        public var max: Double?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case min

            case currencyCode = "currency_code"

            case max

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
            self.min = min

            self.currencyCode = currencyCode

            self.max = max

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
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
        public var highlights: [String]?

        public var brand: ProductBrand?

        public var description: String?

        public var medias: [Media1]?

        public var hasVariant: Bool?

        public var price: ProductListingPrice?

        public var similars: [String]?

        public var ratingCount: Int?

        public var itemCode: String?

        public var type: String?

        public var name: String?

        public var tryouts: [String]?

        public var slug: String

        public var imageNature: String?

        public var productOnlineDate: String?

        public var rating: Double?

        public var shortDescription: String?

        public var itemType: String?

        public var discount: String?

        public var teaserTag: [String: Any]?

        public var uid: Int?

        public var color: String?

        public var promoMeta: [String: Any]?

        public var sellable: Bool?

        public var attributes: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public enum CodingKeys: String, CodingKey {
            case highlights

            case brand

            case description

            case medias

            case hasVariant = "has_variant"

            case price

            case similars

            case ratingCount = "rating_count"

            case itemCode = "item_code"

            case type

            case name

            case tryouts

            case slug

            case imageNature = "image_nature"

            case productOnlineDate = "product_online_date"

            case rating

            case shortDescription = "short_description"

            case itemType = "item_type"

            case discount

            case teaserTag = "teaser_tag"

            case uid

            case color

            case promoMeta = "promo_meta"

            case sellable

            case attributes

            case groupedAttributes = "grouped_attributes"
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.highlights = highlights

            self.brand = brand

            self.description = description

            self.medias = medias

            self.hasVariant = hasVariant

            self.price = price

            self.similars = similars

            self.ratingCount = ratingCount

            self.itemCode = itemCode

            self.type = type

            self.name = name

            self.tryouts = tryouts

            self.slug = slug

            self.imageNature = imageNature

            self.productOnlineDate = productOnlineDate

            self.rating = rating

            self.shortDescription = shortDescription

            self.itemType = itemType

            self.discount = discount

            self.teaserTag = teaserTag

            self.uid = uid

            self.color = color

            self.promoMeta = promoMeta

            self.sellable = sellable

            self.attributes = attributes

            self.groupedAttributes = groupedAttributes
        }

        public func duplicate() -> ProductListingDetail {
            let dict = self.dictionary!
            let copy = ProductListingDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                description = try container.decode(String.self, forKey: .description)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

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
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

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
                type = try container.decode(String.self, forKey: .type)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

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
                color = try container.decode(String.self, forKey: .color)

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
                sellable = try container.decode(Bool.self, forKey: .sellable)

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
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        }
    }

    /*
         Model: GetCollectionItemsResponse
         Used By: Catalog
     */

    class GetCollectionItemsResponse: Codable {
        public var filters: [ProductFilters]?

        public var sortOn: [ProductSortOn]?

        public var items: [ProductListingDetail]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case filters

            case sortOn = "sort_on"

            case items

            case page
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?) {
            self.filters = filters

            self.sortOn = sortOn

            self.items = items

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

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

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

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CatalogInsightBrand
         Used By: Catalog
     */

    class CatalogInsightBrand: Codable {
        public var availableSizes: Int?

        public var name: String?

        public var availableArticles: Int?

        public var articleFreshness: Int?

        public var totalSizes: Int?

        public var totalArticles: Int?

        public enum CodingKeys: String, CodingKey {
            case availableSizes = "available_sizes"

            case name

            case availableArticles = "available_articles"

            case articleFreshness = "article_freshness"

            case totalSizes = "total_sizes"

            case totalArticles = "total_articles"
        }

        public init(articleFreshness: Int?, availableArticles: Int?, availableSizes: Int?, name: String?, totalArticles: Int?, totalSizes: Int?) {
            self.availableSizes = availableSizes

            self.name = name

            self.availableArticles = availableArticles

            self.articleFreshness = articleFreshness

            self.totalSizes = totalSizes

            self.totalArticles = totalArticles
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
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(availableArticles, forKey: .availableArticles)

            try? container.encodeIfPresent(articleFreshness, forKey: .articleFreshness)

            try? container.encodeIfPresent(totalSizes, forKey: .totalSizes)

            try? container.encodeIfPresent(totalArticles, forKey: .totalArticles)
        }
    }

    /*
         Model: CatalogInsightItem
         Used By: Catalog
     */

    class CatalogInsightItem: Codable {
        public var sellableCount: Int?

        public var outOfStockCount: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case sellableCount = "sellable_count"

            case outOfStockCount = "out_of_stock_count"

            case count
        }

        public init(count: Int?, outOfStockCount: Int?, sellableCount: Int?) {
            self.sellableCount = sellableCount

            self.outOfStockCount = outOfStockCount

            self.count = count
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellableCount, forKey: .sellableCount)

            try? container.encodeIfPresent(outOfStockCount, forKey: .outOfStockCount)

            try? container.encodeIfPresent(count, forKey: .count)
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
        public var storeIds: [Int]?

        public var enabled: Bool?

        public var brandIds: [Int]?

        public var optLevel: String

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case enabled

            case brandIds = "brand_ids"

            case optLevel = "opt_level"
        }

        public init(brandIds: [Int]?, enabled: Bool?, optLevel: String, storeIds: [Int]?) {
            self.storeIds = storeIds

            self.enabled = enabled

            self.brandIds = brandIds

            self.optLevel = optLevel
        }

        public func duplicate() -> OptInPostRequest {
            let dict = self.dictionary!
            let copy = OptInPostRequest(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
        }
    }

    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var enabled: Bool

        public var modifiedOn: Int

        public var platform: String

        public var optLevel: String

        public var storeIds: [Int]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var companyId: Int

        public var brandIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case enabled

            case modifiedOn = "modified_on"

            case platform

            case optLevel = "opt_level"

            case storeIds = "store_ids"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case companyId = "company_id"

            case brandIds = "brand_ids"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]?, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]?, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.enabled = enabled

            self.modifiedOn = modifiedOn

            self.platform = platform

            self.optLevel = optLevel

            self.storeIds = storeIds

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.companyId = companyId

            self.brandIds = brandIds
        }

        public func duplicate() -> CompanyOptIn {
            let dict = self.dictionary!
            let copy = CompanyOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            platform = try container.decode(String.self, forKey: .platform)

            optLevel = try container.decode(String.self, forKey: .optLevel)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            brandIds = try container.decode([Int].self, forKey: .brandIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
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
        public var uid: Int?

        public var businessType: String?

        public var companyType: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case businessType = "business_type"

            case companyType = "company_type"

            case name
        }

        public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
            self.uid = uid

            self.businessType = businessType

            self.companyType = companyType

            self.name = name
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
                companyType = try container.decode(String.self, forKey: .companyType)

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

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CompanyBrandDetail
         Used By: Catalog
     */

    class CompanyBrandDetail: Codable {
        public var brandId: Int?

        public var brandName: String?

        public var totalArticle: Int?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case brandName = "brand_name"

            case totalArticle = "total_article"

            case companyId = "company_id"
        }

        public init(brandId: Int?, brandName: String?, companyId: Int?, totalArticle: Int?) {
            self.brandId = brandId

            self.brandName = brandName

            self.totalArticle = totalArticle

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
                totalArticle = try container.decode(Int.self, forKey: .totalArticle)

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

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)

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
        public var storeCode: String?

        public var documents: [[String: Any]]?

        public var name: String?

        public var uid: Int?

        public var modifiedOn: String?

        public var storeType: String?

        public var createdOn: String?

        public var companyId: Int?

        public var additionalContacts: [[String: Any]]?

        public var timing: [String: Any]?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case documents

            case name

            case uid

            case modifiedOn = "modified_on"

            case storeType = "store_type"

            case createdOn = "created_on"

            case companyId = "company_id"

            case additionalContacts = "additional_contacts"

            case timing

            case displayName = "display_name"
        }

        public init(additionalContacts: [[String: Any]]?, companyId: Int?, createdOn: String?, displayName: String?, documents: [[String: Any]]?, modifiedOn: String?, name: String?, storeCode: String?, storeType: String?, timing: [String: Any]?, uid: Int?) {
            self.storeCode = storeCode

            self.documents = documents

            self.name = name

            self.uid = uid

            self.modifiedOn = modifiedOn

            self.storeType = storeType

            self.createdOn = createdOn

            self.companyId = companyId

            self.additionalContacts = additionalContacts

            self.timing = timing

            self.displayName = displayName
        }

        public func duplicate() -> StoreDetail {
            let dict = self.dictionary!
            let copy = StoreDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
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

        public var format: String?

        public var mandatory: Bool?

        public var allowedValues: [String]?

        public var range: AttributeSchemaRange?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case multi

            case format

            case mandatory

            case allowedValues = "allowed_values"

            case range

            case type
        }

        public init(allowedValues: [String]?, format: String?, mandatory: Bool?, multi: Bool?, range: AttributeSchemaRange?, type: String) {
            self.multi = multi

            self.format = format

            self.mandatory = mandatory

            self.allowedValues = allowedValues

            self.range = range

            self.type = type
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

            do {
                allowedValues = try container.decode([String].self, forKey: .allowedValues)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multi, forKey: .multi)

            try? container.encodeIfPresent(format, forKey: .format)

            try? container.encodeIfPresent(mandatory, forKey: .mandatory)

            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)

            try? container.encodeIfPresent(range, forKey: .range)

            try? container.encodeIfPresent(type, forKey: .type)
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
         Model: GenderDetail
         Used By: Catalog
     */

    class GenderDetail: Codable {
        public var schema: AttributeMaster?

        public var name: String?

        public var description: String?

        public var details: AttributeMasterDetails?

        public var enabledForEndConsumer: Bool?

        public var logo: String?

        public var isNested: Bool?

        public var id: String?

        public var meta: AttributeMasterMeta?

        public var filters: AttributeMasterFilter?

        public var slug: String?

        public var departments: [String]?

        public enum CodingKeys: String, CodingKey {
            case schema

            case name

            case description

            case details

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case logo

            case isNested = "is_nested"

            case id

            case meta

            case filters

            case slug

            case departments
        }

        public init(departments: [String]?, description: String?, details: AttributeMasterDetails?, enabledForEndConsumer: Bool?, filters: AttributeMasterFilter?, id: String?, isNested: Bool?, logo: String?, meta: AttributeMasterMeta?, name: String?, schema: AttributeMaster?, slug: String?) {
            self.schema = schema

            self.name = name

            self.description = description

            self.details = details

            self.enabledForEndConsumer = enabledForEndConsumer

            self.logo = logo

            self.isNested = isNested

            self.id = id

            self.meta = meta

            self.filters = filters

            self.slug = slug

            self.departments = departments
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
                name = try container.decode(String.self, forKey: .name)

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
                details = try container.decode(AttributeMasterDetails.self, forKey: .details)

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
                logo = try container.decode(String.self, forKey: .logo)

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
                id = try container.decode(String.self, forKey: .id)

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
                filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

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
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)
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

        public var code: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case errors

            case status

            case meta

            case code

            case message
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.errors = errors

            self.status = status

            self.meta = meta

            self.code = code

            self.message = message
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
                code = try container.decode(String.self, forKey: .code)

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

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: UserSerializer
         Used By: Catalog
     */

    class UserSerializer: Codable {
        public var contact: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case contact

            case userId = "user_id"

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.contact = contact

            self.userId = userId

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

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: GetDepartment
         Used By: Catalog
     */

    class GetDepartment: Codable {
        public var name: String?

        public var pageSize: Int?

        public var uid: Int?

        public var synonyms: [String]?

        public var priorityOrder: Int?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var pageNo: Int?

        public var logo: String?

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var createdOn: String?

        public var itemType: String?

        public var slug: String?

        public var search: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case pageSize = "page_size"

            case uid

            case synonyms

            case priorityOrder = "priority_order"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case pageNo = "page_no"

            case logo

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case itemType = "item_type"

            case slug

            case search
        }

        public init(createdBy: UserSerializer?, createdOn: String?, isActive: Bool?, itemType: String?, logo: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, pageNo: Int?, pageSize: Int?, priorityOrder: Int?, search: String?, slug: String?, synonyms: [String]?, uid: Int?) {
            self.name = name

            self.pageSize = pageSize

            self.uid = uid

            self.synonyms = synonyms

            self.priorityOrder = priorityOrder

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.pageNo = pageNo

            self.logo = logo

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.itemType = itemType

            self.slug = slug

            self.search = search
        }

        public func duplicate() -> GetDepartment {
            let dict = self.dictionary!
            let copy = GetDepartment(dictionary: dict)!
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
                pageSize = try container.decode(Int.self, forKey: .pageSize)

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
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                pageNo = try container.decode(Int.self, forKey: .pageNo)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                search = try container.decode(String.self, forKey: .search)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(search, forKey: .search)
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

        public var code: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case errors

            case status

            case meta

            case code

            case message
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            self.errors = errors

            self.status = status

            self.meta = meta

            self.code = code

            self.message = message
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
                code = try container.decode(String.self, forKey: .code)

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

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var isExpirable: Bool

        public var tag: String?

        public var name: String?

        public var description: String?

        public var isArchived: Bool?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var logo: String?

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var categories: [String]?

        public var createdOn: String?

        public var attributes: [String]?

        public var slug: String

        public var isPhysical: Bool

        public var departments: [String]?

        public enum CodingKeys: String, CodingKey {
            case isExpirable = "is_expirable"

            case tag

            case name

            case description

            case isArchived = "is_archived"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case logo

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case categories

            case createdOn = "created_on"

            case attributes

            case slug

            case isPhysical = "is_physical"

            case departments
        }

        public init(attributes: [String]?, categories: [String]?, createdBy: [String: Any]?, createdOn: String?, departments: [String]?, description: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String?, slug: String, tag: String?) {
            self.isExpirable = isExpirable

            self.tag = tag

            self.name = name

            self.description = description

            self.isArchived = isArchived

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.logo = logo

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.categories = categories

            self.createdOn = createdOn

            self.attributes = attributes

            self.slug = slug

            self.isPhysical = isPhysical

            self.departments = departments
        }

        public func duplicate() -> ProductTemplate {
            let dict = self.dictionary!
            let copy = ProductTemplate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                tag = try container.decode(String.self, forKey: .tag)

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
                description = try container.decode(String.self, forKey: .description)

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
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(departments, forKey: .departments)
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
        public var trader: [String: Any]?

        public var highlights: [String: Any]?

        public var description: [String: Any]?

        public var customOrder: [String: Any]?

        public var categorySlug: [String: Any]?

        public var hsnCode: [String: Any]?

        public var productPublish: [String: Any]?

        public var isDependent: [String: Any]?

        public var itemCode: [String: Any]?

        public var countryOfOrigin: [String: Any]?

        public var media: [String: Any]?

        public var noOfBoxes: [String: Any]?

        public var name: [String: Any]?

        public var tags: [String: Any]?

        public var returnConfig: [String: Any]?

        public var multiSize: [String: Any]?

        public var variants: [String: Any]?

        public var slug: [String: Any]?

        public var isActive: [String: Any]?

        public var moq: [String: Any]?

        public var shortDescription: [String: Any]?

        public var itemType: [String: Any]?

        public var command: [String: Any]?

        public var sizes: [String: Any]?

        public var productGroupTag: [String: Any]?

        public var teaserTag: [String: Any]?

        public var currency: [String: Any]?

        public var traderType: [String: Any]?

        public var brandUid: [String: Any]?

        public var sizeGuide: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trader

            case highlights

            case description

            case customOrder = "custom_order"

            case categorySlug = "category_slug"

            case hsnCode = "hsn_code"

            case productPublish = "product_publish"

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case countryOfOrigin = "country_of_origin"

            case media

            case noOfBoxes = "no_of_boxes"

            case name

            case tags

            case returnConfig = "return_config"

            case multiSize = "multi_size"

            case variants

            case slug

            case isActive = "is_active"

            case moq

            case shortDescription = "short_description"

            case itemType = "item_type"

            case command

            case sizes

            case productGroupTag = "product_group_tag"

            case teaserTag = "teaser_tag"

            case currency

            case traderType = "trader_type"

            case brandUid = "brand_uid"

            case sizeGuide = "size_guide"
        }

        public init(brandUid: [String: Any]?, categorySlug: [String: Any]?, command: [String: Any]?, countryOfOrigin: [String: Any]?, currency: [String: Any]?, customOrder: [String: Any]?, description: [String: Any]?, highlights: [String: Any]?, hsnCode: [String: Any]?, isActive: [String: Any]?, isDependent: [String: Any]?, itemCode: [String: Any]?, itemType: [String: Any]?, media: [String: Any]?, moq: [String: Any]?, multiSize: [String: Any]?, name: [String: Any]?, noOfBoxes: [String: Any]?, productGroupTag: [String: Any]?, productPublish: [String: Any]?, returnConfig: [String: Any]?, shortDescription: [String: Any]?, sizes: [String: Any]?, sizeGuide: [String: Any]?, slug: [String: Any]?, tags: [String: Any]?, teaserTag: [String: Any]?, trader: [String: Any]?, traderType: [String: Any]?, variants: [String: Any]?) {
            self.trader = trader

            self.highlights = highlights

            self.description = description

            self.customOrder = customOrder

            self.categorySlug = categorySlug

            self.hsnCode = hsnCode

            self.productPublish = productPublish

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.countryOfOrigin = countryOfOrigin

            self.media = media

            self.noOfBoxes = noOfBoxes

            self.name = name

            self.tags = tags

            self.returnConfig = returnConfig

            self.multiSize = multiSize

            self.variants = variants

            self.slug = slug

            self.isActive = isActive

            self.moq = moq

            self.shortDescription = shortDescription

            self.itemType = itemType

            self.command = command

            self.sizes = sizes

            self.productGroupTag = productGroupTag

            self.teaserTag = teaserTag

            self.currency = currency

            self.traderType = traderType

            self.brandUid = brandUid

            self.sizeGuide = sizeGuide
        }

        public func duplicate() -> Properties {
            let dict = self.dictionary!
            let copy = Properties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([String: Any].self, forKey: .trader)

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
                description = try container.decode([String: Any].self, forKey: .description)

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
                hsnCode = try container.decode([String: Any].self, forKey: .hsnCode)

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
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

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
                noOfBoxes = try container.decode([String: Any].self, forKey: .noOfBoxes)

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
                multiSize = try container.decode([String: Any].self, forKey: .multiSize)

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
                slug = try container.decode([String: Any].self, forKey: .slug)

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
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                itemType = try container.decode([String: Any].self, forKey: .itemType)

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
                sizes = try container.decode([String: Any].self, forKey: .sizes)

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
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

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
                traderType = try container.decode([String: Any].self, forKey: .traderType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(command, forKey: .command)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(traderType, forKey: .traderType)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
        }
    }

    /*
         Model: GlobalValidation
         Used By: Catalog
     */

    class GlobalValidation: Codable {
        public var title: String?

        public var definitions: [String: Any]?

        public var description: String?

        public var properties: Properties?

        public var required: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case definitions

            case description

            case properties

            case required

            case type
        }

        public init(definitions: [String: Any]?, description: String?, properties: Properties?, required: [String]?, title: String?, type: String?) {
            self.title = title

            self.definitions = definitions

            self.description = description

            self.properties = properties

            self.required = required

            self.type = type
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

            do {
                properties = try container.decode(Properties.self, forKey: .properties)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(definitions, forKey: .definitions)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(type, forKey: .type)
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
        public var isExpirable: Bool

        public var tag: String?

        public var name: String?

        public var description: String?

        public var isArchived: Bool?

        public var isActive: Bool?

        public var logo: String?

        public var id: String?

        public var categories: [String]?

        public var attributes: [String]?

        public var slug: String

        public var isPhysical: Bool

        public var departments: [String]?

        public enum CodingKeys: String, CodingKey {
            case isExpirable = "is_expirable"

            case tag

            case name

            case description

            case isArchived = "is_archived"

            case isActive = "is_active"

            case logo

            case id

            case categories

            case attributes

            case slug

            case isPhysical = "is_physical"

            case departments
        }

        public init(attributes: [String]?, categories: [String]?, departments: [String]?, description: String?, id: String?, isActive: Bool?, isArchived: Bool?, isExpirable: Bool, isPhysical: Bool, logo: String?, name: String?, slug: String, tag: String?) {
            self.isExpirable = isExpirable

            self.tag = tag

            self.name = name

            self.description = description

            self.isArchived = isArchived

            self.isActive = isActive

            self.logo = logo

            self.id = id

            self.categories = categories

            self.attributes = attributes

            self.slug = slug

            self.isPhysical = isPhysical

            self.departments = departments
        }

        public func duplicate() -> TemplateDetails {
            let dict = self.dictionary!
            let copy = TemplateDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                tag = try container.decode(String.self, forKey: .tag)

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
                description = try container.decode(String.self, forKey: .description)

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
                id = try container.decode(String.self, forKey: .id)

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
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(categories, forKey: .categories)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(departments, forKey: .departments)
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
         Model: ProductDownloadsItems
         Used By: Catalog
     */

    class ProductDownloadsItems: Codable {
        public var taskId: String?

        public var triggerOn: String?

        public var url: String?

        public var status: String?

        public var createdBy: VerifiedBy?

        public var templateTags: [String: Any]?

        public var sellerId: Double?

        public var completedOn: String?

        public var id: String?

        public var data: ProductDownloadItemsData?

        public enum CodingKeys: String, CodingKey {
            case taskId = "task_id"

            case triggerOn = "trigger_on"

            case url

            case status

            case createdBy = "created_by"

            case templateTags = "template_tags"

            case sellerId = "seller_id"

            case completedOn = "completed_on"

            case id

            case data
        }

        public init(completedOn: String?, createdBy: VerifiedBy?, data: ProductDownloadItemsData?, id: String?, sellerId: Double?, status: String?, taskId: String?, templateTags: [String: Any]?, triggerOn: String?, url: String?) {
            self.taskId = taskId

            self.triggerOn = triggerOn

            self.url = url

            self.status = status

            self.createdBy = createdBy

            self.templateTags = templateTags

            self.sellerId = sellerId

            self.completedOn = completedOn

            self.id = id

            self.data = data
        }

        public func duplicate() -> ProductDownloadsItems {
            let dict = self.dictionary!
            let copy = ProductDownloadsItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                url = try container.decode(String.self, forKey: .url)

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
                createdBy = try container.decode(VerifiedBy.self, forKey: .createdBy)

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
                sellerId = try container.decode(Double.self, forKey: .sellerId)

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
                data = try container.decode(ProductDownloadItemsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(templateTags, forKey: .templateTags)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(data, forKey: .data)
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
        public var hierarchy: [Hierarchy]?

        public var media: Media2?

        public var level: Int

        public var name: String

        public var marketplaces: CategoryMapping?

        public var synonyms: [String]?

        public var tryouts: [String]?

        public var isActive: Bool

        public var priority: Int?

        public var slug: String?

        public var departments: [Int]

        public enum CodingKeys: String, CodingKey {
            case hierarchy

            case media

            case level

            case name

            case marketplaces

            case synonyms

            case tryouts

            case isActive = "is_active"

            case priority

            case slug

            case departments
        }

        public init(departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?) {
            self.hierarchy = hierarchy

            self.media = media

            self.level = level

            self.name = name

            self.marketplaces = marketplaces

            self.synonyms = synonyms

            self.tryouts = tryouts

            self.isActive = isActive

            self.priority = priority

            self.slug = slug

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
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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

            departments = try container.decode([Int].self, forKey: .departments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)
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
        public var hierarchy: [Hierarchy]?

        public var level: Int

        public var media: Media2?

        public var name: String

        public var marketplaces: CategoryMapping?

        public var uid: Int?

        public var tryouts: [String]?

        public var synonyms: [String]?

        public var modifiedOn: String?

        public var isActive: Bool

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var id: String?

        public var createdOn: String?

        public var priority: Int?

        public var slug: String?

        public var departments: [Int]

        public enum CodingKeys: String, CodingKey {
            case hierarchy

            case level

            case media

            case name

            case marketplaces

            case uid

            case tryouts

            case synonyms

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case id = "_id"

            case createdOn = "created_on"

            case priority

            case slug

            case departments
        }

        public init(createdBy: [String: Any]?, createdOn: String?, departments: [Int], hierarchy: [Hierarchy]?, isActive: Bool, level: Int, marketplaces: CategoryMapping?, media: Media2?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, priority: Int?, slug: String?, synonyms: [String]?, tryouts: [String]?, uid: Int?, id: String?) {
            self.hierarchy = hierarchy

            self.level = level

            self.media = media

            self.name = name

            self.marketplaces = marketplaces

            self.uid = uid

            self.tryouts = tryouts

            self.synonyms = synonyms

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.id = id

            self.createdOn = createdOn

            self.priority = priority

            self.slug = slug

            self.departments = departments
        }

        public func duplicate() -> Category {
            let dict = self.dictionary!
            let copy = Category(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                media = try container.decode(Media2.self, forKey: .media)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

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
                priority = try container.decode(Int.self, forKey: .priority)

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

            departments = try container.decode([Int].self, forKey: .departments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)
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
         Model: OrderQuantity
         Used By: Catalog
     */

    class OrderQuantity: Codable {
        public var maximum: Int?

        public var isSet: Bool?

        public var minimum: Int?

        public enum CodingKeys: String, CodingKey {
            case maximum

            case isSet = "is_set"

            case minimum
        }

        public init(isSet: Bool?, maximum: Int?, minimum: Int?) {
            self.maximum = maximum

            self.isSet = isSet

            self.minimum = minimum
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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(minimum, forKey: .minimum)
        }
    }

    /*
         Model: TeaserTag
         Used By: Catalog
     */

    class TeaserTag: Codable {
        public var url: String?

        public var tag: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case tag
        }

        public init(tag: String?, url: String?) {
            self.url = url

            self.tag = tag
        }

        public func duplicate() -> TeaserTag {
            let dict = self.dictionary!
            let copy = TeaserTag(dictionary: dict)!
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
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(url, forKey: .url)

            try? container.encode(tag, forKey: .tag)
        }
    }

    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var trader: [Trader]

        public var highlights: [String]?

        public var description: String?

        public var customOrder: CustomOrder?

        public var categorySlug: String

        public var hsnCode: String

        public var productPublish: ProductPublish?

        public var bulkJobId: String?

        public var isDependent: Bool?

        public var itemCode: String

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var media: [Media1]?

        public var noOfBoxes: Int?

        public var name: String

        public var tags: [String]?

        public var returnConfig: ReturnConfig

        public var multiSize: Bool?

        public var variants: [String: Any]?

        public var companyId: Int

        public var slug: String

        public var isActive: Bool?

        public var requester: String?

        public var customJson: [String: Any]?

        public var moq: OrderQuantity?

        public var shortDescription: String?

        public var itemType: String

        public var templateTag: String

        public var departments: [Int]

        public var productGroupTag: [String]?

        public var teaserTag: TeaserTag?

        public var brandUid: Int

        public var currency: String

        public var uid: Int?

        public var isImageLessProduct: Bool?

        public var action: String?

        public var sizeGuide: String?

        public var changeRequestId: String?

        public enum CodingKeys: String, CodingKey {
            case trader

            case highlights

            case description

            case customOrder = "custom_order"

            case categorySlug = "category_slug"

            case hsnCode = "hsn_code"

            case productPublish = "product_publish"

            case bulkJobId = "bulk_job_id"

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case media

            case noOfBoxes = "no_of_boxes"

            case name

            case tags

            case returnConfig = "return_config"

            case multiSize = "multi_size"

            case variants

            case companyId = "company_id"

            case slug

            case isActive = "is_active"

            case requester

            case customJson = "_custom_json"

            case moq

            case shortDescription = "short_description"

            case itemType = "item_type"

            case templateTag = "template_tag"

            case departments

            case productGroupTag = "product_group_tag"

            case teaserTag = "teaser_tag"

            case brandUid = "brand_uid"

            case currency

            case uid

            case isImageLessProduct = "is_image_less_product"

            case action

            case sizeGuide = "size_guide"

            case changeRequestId = "change_request_id"
        }

        public init(action: String?, brandUid: Int, bulkJobId: String?, categorySlug: String, changeRequestId: String?, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder?, departments: [Int], description: String?, highlights: [String]?, hsnCode: String, isActive: Bool?, isDependent: Bool?, isImageLessProduct: Bool?, isSet: Bool?, itemCode: String, itemType: String, media: [Media1]?, moq: OrderQuantity?, multiSize: Bool?, name: String, noOfBoxes: Int?, productGroupTag: [String]?, productPublish: ProductPublish?, requester: String?, returnConfig: ReturnConfig, shortDescription: String?, sizeGuide: String?, slug: String, tags: [String]?, teaserTag: TeaserTag?, templateTag: String, trader: [Trader], uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.trader = trader

            self.highlights = highlights

            self.description = description

            self.customOrder = customOrder

            self.categorySlug = categorySlug

            self.hsnCode = hsnCode

            self.productPublish = productPublish

            self.bulkJobId = bulkJobId

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.media = media

            self.noOfBoxes = noOfBoxes

            self.name = name

            self.tags = tags

            self.returnConfig = returnConfig

            self.multiSize = multiSize

            self.variants = variants

            self.companyId = companyId

            self.slug = slug

            self.isActive = isActive

            self.requester = requester

            self.customJson = customJson

            self.moq = moq

            self.shortDescription = shortDescription

            self.itemType = itemType

            self.templateTag = templateTag

            self.departments = departments

            self.productGroupTag = productGroupTag

            self.teaserTag = teaserTag

            self.brandUid = brandUid

            self.currency = currency

            self.uid = uid

            self.isImageLessProduct = isImageLessProduct

            self.action = action

            self.sizeGuide = sizeGuide

            self.changeRequestId = changeRequestId
        }

        public func duplicate() -> ProductCreateUpdate {
            let dict = self.dictionary!
            let copy = ProductCreateUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                media = try container.decode([Media1].self, forKey: .media)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encode(changeRequestId, forKey: .changeRequestId)
        }
    }

    /*
         Model: Logo
         Used By: Catalog
     */

    class Logo: Codable {
        public var aspectRatio: String?

        public var aspectRatioF: Int?

        public var url: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case aspectRatioF = "aspect_ratio_f"

            case url

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, aspectRatioF: Int?, secureUrl: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.aspectRatioF = aspectRatioF

            self.url = url

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
                aspectRatioF = try container.decode(Int.self, forKey: .aspectRatioF)

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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: Brand
         Used By: Catalog
     */

    class Brand: Codable {
        public var logo: Logo?

        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case uid

            case name
        }

        public init(logo: Logo?, name: String?, uid: Int?) {
            self.logo = logo

            self.uid = uid

            self.name = name
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
                uid = try container.decode(Int.self, forKey: .uid)

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

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
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
         Model: Image
         Used By: Catalog
     */

    class Image: Codable {
        public var aspectRatio: String?

        public var aspectRatioF: Double?

        public var url: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case aspectRatioF = "aspect_ratio_f"

            case url

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, aspectRatioF: Double?, secureUrl: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.aspectRatioF = aspectRatioF

            self.url = url

            self.secureUrl = secureUrl
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

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: Product
         Used By: Catalog
     */

    class Product: Codable {
        public var highlights: [String]?

        public var description: String?

        public var customOrder: [String: Any]?

        public var brand: Brand?

        public var l3Mapping: [String]?

        public var categorySlug: String?

        public var hsnCode: String?

        public var productPublish: ProductPublished?

        public var isDependent: Bool?

        public var itemCode: String?

        public var allSizes: [[String: Any]]?

        public var isSet: Bool?

        public var countryOfOrigin: String?

        public var media: [Media1]?

        public var name: String?

        public var multiSize: Bool?

        public var variants: [String: Any]?

        public var primaryColor: String?

        public var slug: String?

        public var isPhysical: Bool?

        public var isActive: Bool?

        public var images: [Image]?

        public var customJson: [String: Any]?

        public var imageNature: String?

        public var categoryUid: Int?

        public var shortDescription: String?

        public var moq: [String: Any]?

        public var itemType: String?

        public var templateTag: String?

        public var departments: [Int]?

        public var sizes: [[String: Any]]?

        public var currency: String?

        public var brandUid: Int?

        public var uid: Int?

        public var color: String?

        public var id: String?

        public var sizeGuide: String?

        public enum CodingKeys: String, CodingKey {
            case highlights

            case description

            case customOrder = "custom_order"

            case brand

            case l3Mapping = "l3_mapping"

            case categorySlug = "category_slug"

            case hsnCode = "hsn_code"

            case productPublish = "product_publish"

            case isDependent = "is_dependent"

            case itemCode = "item_code"

            case allSizes = "all_sizes"

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case media

            case name

            case multiSize = "multi_size"

            case variants

            case primaryColor = "primary_color"

            case slug

            case isPhysical = "is_physical"

            case isActive = "is_active"

            case images

            case customJson = "_custom_json"

            case imageNature = "image_nature"

            case categoryUid = "category_uid"

            case shortDescription = "short_description"

            case moq

            case itemType = "item_type"

            case templateTag = "template_tag"

            case departments

            case sizes

            case currency

            case brandUid = "brand_uid"

            case uid

            case color

            case id

            case sizeGuide = "size_guide"
        }

        public init(allSizes: [[String: Any]]?, brand: Brand?, brandUid: Int?, categorySlug: String?, categoryUid: Int?, color: String?, countryOfOrigin: String?, currency: String?, customOrder: [String: Any]?, departments: [Int]?, description: String?, highlights: [String]?, hsnCode: String?, id: String?, images: [Image]?, imageNature: String?, isActive: Bool?, isDependent: Bool?, isPhysical: Bool?, isSet: Bool?, itemCode: String?, itemType: String?, l3Mapping: [String]?, media: [Media1]?, moq: [String: Any]?, multiSize: Bool?, name: String?, primaryColor: String?, productPublish: ProductPublished?, shortDescription: String?, sizes: [[String: Any]]?, sizeGuide: String?, slug: String?, templateTag: String?, uid: Int?, variants: [String: Any]?, customJson: [String: Any]?) {
            self.highlights = highlights

            self.description = description

            self.customOrder = customOrder

            self.brand = brand

            self.l3Mapping = l3Mapping

            self.categorySlug = categorySlug

            self.hsnCode = hsnCode

            self.productPublish = productPublish

            self.isDependent = isDependent

            self.itemCode = itemCode

            self.allSizes = allSizes

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.media = media

            self.name = name

            self.multiSize = multiSize

            self.variants = variants

            self.primaryColor = primaryColor

            self.slug = slug

            self.isPhysical = isPhysical

            self.isActive = isActive

            self.images = images

            self.customJson = customJson

            self.imageNature = imageNature

            self.categoryUid = categoryUid

            self.shortDescription = shortDescription

            self.moq = moq

            self.itemType = itemType

            self.templateTag = templateTag

            self.departments = departments

            self.sizes = sizes

            self.currency = currency

            self.brandUid = brandUid

            self.uid = uid

            self.color = color

            self.id = id

            self.sizeGuide = sizeGuide
        }

        public func duplicate() -> Product {
            let dict = self.dictionary!
            let copy = Product(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                l3Mapping = try container.decode([String].self, forKey: .l3Mapping)

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
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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
                name = try container.decode(String.self, forKey: .name)

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
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

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
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                currency = try container.decode(String.self, forKey: .currency)

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

            do {
                color = try container.decode(String.self, forKey: .color)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(l3Mapping, forKey: .l3Mapping)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(allSizes, forKey: .allSizes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)
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
        public var uid: String?

        public var username: String?

        public var email: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case username

            case email

            case userId = "user_id"
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.uid = uid

            self.username = username

            self.email = email

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

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var stage: String?

        public var customTemplateTag: String?

        public var filePath: String?

        public var cancelledRecords: [[String: Any]]?

        public var failedRecords: [[String: Any]]?

        public var modifiedOn: String?

        public var total: Int

        public var trackingUrl: String?

        public var createdBy: UserInfo1?

        public var modifiedBy: UserInfo1?

        public var succeed: Int?

        public var createdOn: String

        public var companyId: Int

        public var failed: Int?

        public var cancelled: Int?

        public var isActive: Bool?

        public var templateTag: String?

        public enum CodingKeys: String, CodingKey {
            case stage

            case customTemplateTag = "custom_template_tag"

            case filePath = "file_path"

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case modifiedOn = "modified_on"

            case total

            case trackingUrl = "tracking_url"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case succeed

            case createdOn = "created_on"

            case companyId = "company_id"

            case failed

            case cancelled

            case isActive = "is_active"

            case templateTag = "template_tag"
        }

        public init(cancelled: Int?, cancelledRecords: [[String: Any]]?, companyId: Int, createdBy: UserInfo1?, createdOn: String, customTemplateTag: String?, failed: Int?, failedRecords: [[String: Any]]?, filePath: String?, isActive: Bool?, modifiedBy: UserInfo1?, modifiedOn: String?, stage: String?, succeed: Int?, templateTag: String?, total: Int, trackingUrl: String?) {
            self.stage = stage

            self.customTemplateTag = customTemplateTag

            self.filePath = filePath

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.modifiedOn = modifiedOn

            self.total = total

            self.trackingUrl = trackingUrl

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.succeed = succeed

            self.createdOn = createdOn

            self.companyId = companyId

            self.failed = failed

            self.cancelled = cancelled

            self.isActive = isActive

            self.templateTag = templateTag
        }

        public func duplicate() -> BulkJob {
            let dict = self.dictionary!
            let copy = BulkJob(dictionary: dict)!
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
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            total = try container.decode(Int.self, forKey: .total)

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

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
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                failed = try container.decode(Int.self, forKey: .failed)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
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
        public var stage: String?

        public var filePath: String?

        public var cancelledRecords: [String]?

        public var template: ProductTemplate?

        public var failedRecords: [String]?

        public var modifiedOn: String?

        public var total: Int?

        public var createdBy: UserDetail?

        public var modifiedBy: UserDetail?

        public var succeed: Int?

        public var failed: Int?

        public var companyId: Int?

        public var createdOn: String?

        public var cancelled: Int?

        public var isActive: Bool?

        public var templateTag: String?

        public enum CodingKeys: String, CodingKey {
            case stage

            case filePath = "file_path"

            case cancelledRecords = "cancelled_records"

            case template

            case failedRecords = "failed_records"

            case modifiedOn = "modified_on"

            case total

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case succeed

            case failed

            case companyId = "company_id"

            case createdOn = "created_on"

            case cancelled

            case isActive = "is_active"

            case templateTag = "template_tag"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserDetail?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, isActive: Bool?, modifiedBy: UserDetail?, modifiedOn: String?, stage: String?, succeed: Int?, template: ProductTemplate?, templateTag: String?, total: Int?) {
            self.stage = stage

            self.filePath = filePath

            self.cancelledRecords = cancelledRecords

            self.template = template

            self.failedRecords = failedRecords

            self.modifiedOn = modifiedOn

            self.total = total

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.succeed = succeed

            self.failed = failed

            self.companyId = companyId

            self.createdOn = createdOn

            self.cancelled = cancelled

            self.isActive = isActive

            self.templateTag = templateTag
        }

        public func duplicate() -> ProductBulkRequest {
            let dict = self.dictionary!
            let copy = ProductBulkRequest(dictionary: dict)!
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
                filePath = try container.decode(String.self, forKey: .filePath)

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
                template = try container.decode(ProductTemplate.self, forKey: .template)

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
                total = try container.decode(Int.self, forKey: .total)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
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

        public var data: [[String: Any]]

        public var templateTag: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case data

            case templateTag = "template_tag"

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.batchId = batchId

            self.data = data

            self.templateTag = templateTag

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

            data = try container.decode([[String: Any]].self, forKey: .data)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

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

        public var user: [String: Any]

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case user

            case companyId = "company_id"
        }

        public init(companyId: Int?, url: String, user: [String: Any]) {
            self.url = url

            self.user = user

            self.companyId = companyId
        }

        public func duplicate() -> ProductBulkAssets {
            let dict = self.dictionary!
            let copy = ProductBulkAssets(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            user = try container.decode([String: Any].self, forKey: .user)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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
        public var stage: String?

        public var cancelledRecords: [String]?

        public var failedRecords: [String]?

        public var modifiedOn: String?

        public var cancelled: Int?

        public var isActive: Bool?

        public var total: Int?

        public var createdBy: UserCommon?

        public var companyId: Int?

        public var modifiedBy: UserCommon?

        public var trackingUrl: String?

        public var id: String?

        public var succeed: Int?

        public var createdOn: String?

        public var failed: Int?

        public var retry: Int?

        public var filePath: String?

        public enum CodingKeys: String, CodingKey {
            case stage

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case modifiedOn = "modified_on"

            case cancelled

            case isActive = "is_active"

            case total

            case createdBy = "created_by"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case trackingUrl = "tracking_url"

            case id

            case succeed

            case createdOn = "created_on"

            case failed

            case retry

            case filePath = "file_path"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserCommon?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: UserCommon?, modifiedOn: String?, retry: Int?, stage: String?, succeed: Int?, total: Int?, trackingUrl: String?) {
            self.stage = stage

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.modifiedOn = modifiedOn

            self.cancelled = cancelled

            self.isActive = isActive

            self.total = total

            self.createdBy = createdBy

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.trackingUrl = trackingUrl

            self.id = id

            self.succeed = succeed

            self.createdOn = createdOn

            self.failed = failed

            self.retry = retry

            self.filePath = filePath
        }

        public func duplicate() -> Items {
            let dict = self.dictionary!
            let copy = Items(dictionary: dict)!
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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                total = try container.decode(Int.self, forKey: .total)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                failed = try container.decode(Int.self, forKey: .failed)

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
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(filePath, forKey: .filePath)
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
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var gtinType: String

        public var gtinValue: String

        public var primary: Bool?

        public enum CodingKeys: String, CodingKey {
            case gtinType = "gtin_type"

            case gtinValue = "gtin_value"

            case primary
        }

        public init(gtinType: String, gtinValue: String, primary: Bool?) {
            self.gtinType = gtinType

            self.gtinValue = gtinValue

            self.primary = primary
        }

        public func duplicate() -> GTIN {
            let dict = self.dictionary!
            let copy = GTIN(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gtinType = try container.decode(String.self, forKey: .gtinType)

            gtinValue = try container.decode(String.self, forKey: .gtinValue)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)

            try? container.encodeIfPresent(primary, forKey: .primary)
        }
    }

    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var storeCode: String

        public var size: String

        public var isSet: Bool?

        public var itemLength: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public var set: InventorySet?

        public var identifiers: [GTIN]

        public var expirationDate: String?

        public var itemWeight: Double?

        public var itemWeightUnitOfMeasure: String?

        public var quantity: Int

        public var price: Double

        public var itemWidth: Double?

        public var priceEffective: Double

        public var itemHeight: Double?

        public var priceTransfer: Double?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case size

            case isSet = "is_set"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency

            case set

            case identifiers

            case expirationDate = "expiration_date"

            case itemWeight = "item_weight"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case quantity

            case price

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case itemHeight = "item_height"

            case priceTransfer = "price_transfer"
        }

        public init(currency: String, expirationDate: String?, identifiers: [GTIN], isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, set: InventorySet?, size: String, storeCode: String) {
            self.storeCode = storeCode

            self.size = size

            self.isSet = isSet

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency

            self.set = set

            self.identifiers = identifiers

            self.expirationDate = expirationDate

            self.itemWeight = itemWeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.quantity = quantity

            self.price = price

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.itemHeight = itemHeight

            self.priceTransfer = priceTransfer
        }

        public func duplicate() -> InvSize {
            let dict = self.dictionary!
            let copy = InvSize(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            size = try container.decode(String.self, forKey: .size)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            price = try container.decode(Double.self, forKey: .price)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)
        }
    }

    /*
         Model: ItemQuery
         Used By: Catalog
     */

    class ItemQuery: Codable {
        public var uid: Int?

        public var brandUid: Int?

        public var itemCode: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case brandUid = "brand_uid"

            case itemCode = "item_code"
        }

        public init(brandUid: Int?, itemCode: String?, uid: Int?) {
            self.uid = uid

            self.brandUid = brandUid

            self.itemCode = itemCode
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
                brandUid = try container.decode(Int.self, forKey: .brandUid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
        }
    }

    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var sizes: [InvSize]

        public var item: ItemQuery

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case sizes

            case item

            case companyId = "company_id"
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.sizes = sizes

            self.item = item

            self.companyId = companyId
        }

        public func duplicate() -> InventoryRequest {
            let dict = self.dictionary!
            let copy = InventoryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizes = try container.decode([InvSize].self, forKey: .sizes)

            item = try container.decode(ItemQuery.self, forKey: .item)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: InventoryResponse
         Used By: Catalog
     */

    class InventoryResponse: Codable {
        public var sellerIdentifier: Int?

        public var size: String?

        public var priceTransfer: Int?

        public var sellableQuantity: Int?

        public var currency: String?

        public var uid: String?

        public var identifiers: [String: Any]?

        public var quantity: Int?

        public var price: Int?

        public var priceEffective: Int?

        public var itemId: Int?

        public var store: [String: Any]?

        public var inventoryUpdatedOn: String?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case size

            case priceTransfer = "price_transfer"

            case sellableQuantity = "sellable_quantity"

            case currency

            case uid

            case identifiers

            case quantity

            case price

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case store

            case inventoryUpdatedOn = "inventory_updated_on"
        }

        public init(currency: String?, identifiers: [String: Any]?, inventoryUpdatedOn: String?, itemId: Int?, price: Int?, priceEffective: Int?, priceTransfer: Int?, quantity: Int?, sellableQuantity: Int?, sellerIdentifier: Int?, size: String?, store: [String: Any]?, uid: String?) {
            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.priceTransfer = priceTransfer

            self.sellableQuantity = sellableQuantity

            self.currency = currency

            self.uid = uid

            self.identifiers = identifiers

            self.quantity = quantity

            self.price = price

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.store = store

            self.inventoryUpdatedOn = inventoryUpdatedOn
        }

        public func duplicate() -> InventoryResponse {
            let dict = self.dictionary!
            let copy = InventoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellerIdentifier = try container.decode(Int.self, forKey: .sellerIdentifier)

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
                priceTransfer = try container.decode(Int.self, forKey: .priceTransfer)

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
                currency = try container.decode(String.self, forKey: .currency)

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
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

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
                price = try container.decode(Int.self, forKey: .price)

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
                itemId = try container.decode(Int.self, forKey: .itemId)

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
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)
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
        public var stage: String?

        public var cancelledRecords: [String]?

        public var failedRecords: [String]?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var total: Int?

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var id: String?

        public var succeed: Int?

        public var createdOn: String?

        public var companyId: Int?

        public var failed: Int?

        public var cancelled: Int?

        public var filePath: String?

        public enum CodingKeys: String, CodingKey {
            case stage

            case cancelledRecords = "cancelled_records"

            case failedRecords = "failed_records"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case total

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case id

            case succeed

            case createdOn = "created_on"

            case companyId = "company_id"

            case failed

            case cancelled

            case filePath = "file_path"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: [String: Any]?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, id: String?, isActive: Bool?, modifiedBy: [String: Any]?, modifiedOn: String?, stage: String?, succeed: Int?, total: Int?) {
            self.stage = stage

            self.cancelledRecords = cancelledRecords

            self.failedRecords = failedRecords

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.total = total

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.id = id

            self.succeed = succeed

            self.createdOn = createdOn

            self.companyId = companyId

            self.failed = failed

            self.cancelled = cancelled

            self.filePath = filePath
        }

        public func duplicate() -> BulkInventoryGetItems {
            let dict = self.dictionary!
            let copy = BulkInventoryGetItems(dictionary: dict)!
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
                total = try container.decode(Int.self, forKey: .total)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                failed = try container.decode(Int.self, forKey: .failed)

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
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(filePath, forKey: .filePath)
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
        public var storeCode: String

        public var size: String?

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var itemLength: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public var set: InventorySet?

        public var identifiers: [[String: Any]]?

        public var expirationDate: String?

        public var itemWeight: Double?

        public var itemWeightUnitOfMeasure: String?

        public var quantity: Int

        public var price: Double

        public var itemWidth: Double?

        public var priceEffective: Double

        public var itemHeight: Double?

        public var priceTransfer: Double?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case size

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency

            case set

            case identifiers

            case expirationDate = "expiration_date"

            case itemWeight = "item_weight"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case quantity

            case price

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case itemHeight = "item_height"

            case priceTransfer = "price_transfer"
        }

        public init(currency: String, expirationDate: String?, identifiers: [[String: Any]]?, isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, sellerIdentifier: String, set: InventorySet?, size: String?, storeCode: String) {
            self.storeCode = storeCode

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency

            self.set = set

            self.identifiers = identifiers

            self.expirationDate = expirationDate

            self.itemWeight = itemWeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.quantity = quantity

            self.price = price

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.itemHeight = itemHeight

            self.priceTransfer = priceTransfer
        }

        public func duplicate() -> Size1 {
            let dict = self.dictionary!
            let copy = Size1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            price = try container.decode(Double.self, forKey: .price)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)
        }
    }

    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var batchId: String

        public var sizes: [Size1]

        public var user: [String: Any]?

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case sizes

            case user

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: Int, sizes: [Size1], user: [String: Any]?) {
            self.batchId = batchId

            self.sizes = sizes

            self.user = user

            self.companyId = companyId
        }

        public func duplicate() -> InventoryBulkRequest {
            let dict = self.dictionary!
            let copy = InventoryBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            sizes = try container.decode([Size1].self, forKey: .sizes)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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
        public var taskId: String

        public var url: String?

        public var triggerOn: String?

        public var status: String?

        public var requestParams: [String: Any]?

        public var sellerId: Int

        public var completedOn: String?

        public enum CodingKeys: String, CodingKey {
            case taskId = "task_id"

            case url

            case triggerOn = "trigger_on"

            case status

            case requestParams = "request_params"

            case sellerId = "seller_id"

            case completedOn = "completed_on"
        }

        public init(completedOn: String?, requestParams: [String: Any]?, sellerId: Int, status: String?, taskId: String, triggerOn: String?, url: String?) {
            self.taskId = taskId

            self.url = url

            self.triggerOn = triggerOn

            self.status = status

            self.requestParams = requestParams

            self.sellerId = sellerId

            self.completedOn = completedOn
        }

        public func duplicate() -> InventoryExportJob {
            let dict = self.dictionary!
            let copy = InventoryExportJob(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taskId = try container.decode(String.self, forKey: .taskId)

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
                status = try container.decode(String.self, forKey: .status)

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

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

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
        public var multivalues: Bool?

        public var data: [FilerList]?

        public enum CodingKeys: String, CodingKey {
            case multivalues

            case data
        }

        public init(data: [FilerList]?, multivalues: Bool?) {
            self.multivalues = multivalues

            self.data = data
        }

        public func duplicate() -> InventoryConfig {
            let dict = self.dictionary!
            let copy = InventoryConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                multivalues = try container.decode(Bool.self, forKey: .multivalues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([FilerList].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(multivalues, forKey: .multivalues)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: HsnUpsert
         Used By: Catalog
     */

    class HsnUpsert: Codable {
        public var hs2Code: String

        public var uid: Int?

        public var hsnCode: String

        public var taxOnMrp: Bool

        public var taxOnEsp: Bool?

        public var companyId: Int

        public var threshold1: Double

        public var tax1: Double

        public var tax2: Double?

        public var threshold2: Double?

        public enum CodingKeys: String, CodingKey {
            case hs2Code = "hs2_code"

            case uid

            case hsnCode = "hsn_code"

            case taxOnMrp = "tax_on_mrp"

            case taxOnEsp = "tax_on_esp"

            case companyId = "company_id"

            case threshold1

            case tax1

            case tax2

            case threshold2
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, tax1: Double, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool, threshold1: Double, threshold2: Double?, uid: Int?) {
            self.hs2Code = hs2Code

            self.uid = uid

            self.hsnCode = hsnCode

            self.taxOnMrp = taxOnMrp

            self.taxOnEsp = taxOnEsp

            self.companyId = companyId

            self.threshold1 = threshold1

            self.tax1 = tax1

            self.tax2 = tax2

            self.threshold2 = threshold2
        }

        public func duplicate() -> HsnUpsert {
            let dict = self.dictionary!
            let copy = HsnUpsert(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hs2Code = try container.decode(String.self, forKey: .hs2Code)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            do {
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            threshold1 = try container.decode(Double.self, forKey: .threshold1)

            tax1 = try container.decode(Double.self, forKey: .tax1)

            do {
                tax2 = try container.decode(Double.self, forKey: .tax2)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)
        }
    }

    /*
         Model: HsnCodesObject
         Used By: Catalog
     */

    class HsnCodesObject: Codable {
        public var hs2Code: String?

        public var modifiedOn: String?

        public var hsnCode: String?

        public var taxOnMrp: Bool?

        public var taxOnEsp: Bool?

        public var id: String?

        public var companyId: Int?

        public var threshold1: Double?

        public var tax1: Double?

        public var tax2: Double?

        public var threshold2: Double?

        public enum CodingKeys: String, CodingKey {
            case hs2Code = "hs2_code"

            case modifiedOn = "modified_on"

            case hsnCode = "hsn_code"

            case taxOnMrp = "tax_on_mrp"

            case taxOnEsp = "tax_on_esp"

            case id

            case companyId = "company_id"

            case threshold1

            case tax1

            case tax2

            case threshold2
        }

        public init(companyId: Int?, hs2Code: String?, hsnCode: String?, id: String?, modifiedOn: String?, tax1: Double?, tax2: Double?, taxOnEsp: Bool?, taxOnMrp: Bool?, threshold1: Double?, threshold2: Double?) {
            self.hs2Code = hs2Code

            self.modifiedOn = modifiedOn

            self.hsnCode = hsnCode

            self.taxOnMrp = taxOnMrp

            self.taxOnEsp = taxOnEsp

            self.id = id

            self.companyId = companyId

            self.threshold1 = threshold1

            self.tax1 = tax1

            self.tax2 = tax2

            self.threshold2 = threshold2
        }

        public func duplicate() -> HsnCodesObject {
            let dict = self.dictionary!
            let copy = HsnCodesObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hs2Code = try container.decode(String.self, forKey: .hs2Code)

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
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                tax1 = try container.decode(Double.self, forKey: .tax1)

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
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)
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

        public var hasNext: Bool?

        public var itemTotal: Int?

        public var hasPrevious: Bool?

        public enum CodingKeys: String, CodingKey {
            case size

            case current

            case hasNext = "has_next"

            case itemTotal = "item_total"

            case hasPrevious = "has_previous"
        }

        public init(current: String?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, size: Int?) {
            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.hasPrevious = hasPrevious
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
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

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
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
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
        public var discount: String?

        public var name: String?

        public var uid: Int?

        public var action: Action?

        public var logo: Media?

        public var slug: String?

        public var departments: [String]?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case discount

            case name

            case uid

            case action

            case logo

            case slug

            case departments

            case banners
        }

        public init(action: Action?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
            self.discount = discount

            self.name = name

            self.uid = uid

            self.action = action

            self.logo = logo

            self.slug = slug

            self.departments = departments

            self.banners = banners
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
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(banners, forKey: .banners)
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

        public var name: String?

        public var uid: Int?

        public var logo: Media?

        public var priorityOrder: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case name

            case uid

            case logo

            case priorityOrder = "priority_order"
        }

        public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.slug = slug

            self.name = name

            self.uid = uid

            self.logo = logo

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
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

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
        public var name: String?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var action: Action?

        public var slug: String?

        public var childs: [[String: Any]]?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case name

            case customJson = "_custom_json"

            case uid

            case action

            case slug

            case childs

            case banners
        }

        public init(action: Action?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.customJson = customJson

            self.uid = uid

            self.action = action

            self.slug = slug

            self.childs = childs

            self.banners = banners
        }

        public func duplicate() -> ThirdLevelChild {
            let dict = self.dictionary!
            let copy = ThirdLevelChild(dictionary: dict)!
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
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)
        }
    }

    /*
         Model: SecondLevelChild
         Used By: Catalog
     */

    class SecondLevelChild: Codable {
        public var name: String?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var action: Action?

        public var slug: String?

        public var childs: [ThirdLevelChild]?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case name

            case customJson = "_custom_json"

            case uid

            case action

            case slug

            case childs

            case banners
        }

        public init(action: Action?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.customJson = customJson

            self.uid = uid

            self.action = action

            self.slug = slug

            self.childs = childs

            self.banners = banners
        }

        public func duplicate() -> SecondLevelChild {
            let dict = self.dictionary!
            let copy = SecondLevelChild(dictionary: dict)!
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
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)
        }
    }

    /*
         Model: Child
         Used By: Catalog
     */

    class Child: Codable {
        public var name: String?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var action: Action?

        public var slug: String?

        public var childs: [SecondLevelChild]?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case name

            case customJson = "_custom_json"

            case uid

            case action

            case slug

            case childs

            case banners
        }

        public init(action: Action?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.name = name

            self.customJson = customJson

            self.uid = uid

            self.action = action

            self.slug = slug

            self.childs = childs

            self.banners = banners
        }

        public func duplicate() -> Child {
            let dict = self.dictionary!
            let copy = Child(dictionary: dict)!
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
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)
        }
    }

    /*
         Model: CategoryItems
         Used By: Catalog
     */

    class CategoryItems: Codable {
        public var name: String?

        public var uid: Int?

        public var action: Action?

        public var slug: String?

        public var childs: [Child]?

        public var banners: ImageUrls?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case action

            case slug

            case childs

            case banners
        }

        public init(action: Action?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.action = action

            self.slug = slug

            self.childs = childs

            self.banners = banners
        }

        public func duplicate() -> CategoryItems {
            let dict = self.dictionary!
            let copy = CategoryItems(dictionary: dict)!
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
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)
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

        public var sortOn: [ProductSortOn]?

        public var items: [ProductListingDetail]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case filters

            case sortOn = "sort_on"

            case items

            case page
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
            self.filters = filters

            self.sortOn = sortOn

            self.items = items

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

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductDetail
         Used By: Catalog
     */

    class ProductDetail: Codable {
        public var highlights: [String]?

        public var brand: ProductBrand?

        public var description: String?

        public var medias: [Media1]?

        public var hasVariant: Bool?

        public var similars: [String]?

        public var ratingCount: Int?

        public var itemCode: String?

        public var type: String?

        public var name: String?

        public var tryouts: [String]?

        public var slug: String

        public var imageNature: String?

        public var productOnlineDate: String?

        public var rating: Double?

        public var shortDescription: String?

        public var itemType: String?

        public var teaserTag: [String: Any]?

        public var uid: Int?

        public var color: String?

        public var promoMeta: [String: Any]?

        public var attributes: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public enum CodingKeys: String, CodingKey {
            case highlights

            case brand

            case description

            case medias

            case hasVariant = "has_variant"

            case similars

            case ratingCount = "rating_count"

            case itemCode = "item_code"

            case type

            case name

            case tryouts

            case slug

            case imageNature = "image_nature"

            case productOnlineDate = "product_online_date"

            case rating

            case shortDescription = "short_description"

            case itemType = "item_type"

            case teaserTag = "teaser_tag"

            case uid

            case color

            case promoMeta = "promo_meta"

            case attributes

            case groupedAttributes = "grouped_attributes"
        }

        public init(attributes: [String: Any]?, brand: ProductBrand?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media1]?, name: String?, productOnlineDate: String?, promoMeta: [String: Any]?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: [String: Any]?, tryouts: [String]?, type: String?, uid: Int?) {
            self.highlights = highlights

            self.brand = brand

            self.description = description

            self.medias = medias

            self.hasVariant = hasVariant

            self.similars = similars

            self.ratingCount = ratingCount

            self.itemCode = itemCode

            self.type = type

            self.name = name

            self.tryouts = tryouts

            self.slug = slug

            self.imageNature = imageNature

            self.productOnlineDate = productOnlineDate

            self.rating = rating

            self.shortDescription = shortDescription

            self.itemType = itemType

            self.teaserTag = teaserTag

            self.uid = uid

            self.color = color

            self.promoMeta = promoMeta

            self.attributes = attributes

            self.groupedAttributes = groupedAttributes
        }

        public func duplicate() -> ProductDetail {
            let dict = self.dictionary!
            let copy = ProductDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                description = try container.decode(String.self, forKey: .description)

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
                similars = try container.decode([String].self, forKey: .similars)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                name = try container.decode(String.self, forKey: .name)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

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
                rating = try container.decode(Double.self, forKey: .rating)

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
                itemType = try container.decode(String.self, forKey: .itemType)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

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
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        }
    }

    /*
         Model: ArticleQuery
         Used By: Catalog
     */

    class ArticleQuery: Codable {
        public var size: String

        public var itemId: Int

        public var ignoredStores: [Int]?

        public enum CodingKeys: String, CodingKey {
            case size

            case itemId = "item_id"

            case ignoredStores = "ignored_stores"
        }

        public init(ignoredStores: [Int]?, itemId: Int, size: String) {
            self.size = size

            self.itemId = itemId

            self.ignoredStores = ignoredStores
        }

        public func duplicate() -> ArticleQuery {
            let dict = self.dictionary!
            let copy = ArticleQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)
        }
    }

    /*
         Model: AssignStoreArticle
         Used By: Catalog
     */

    class AssignStoreArticle: Codable {
        public var groupId: String?

        public var query: ArticleQuery?

        public var quantity: Int?

        public var articleAssignment: ArticleAssignment?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case groupId = "group_id"

            case query

            case quantity

            case articleAssignment = "article_assignment"

            case meta
        }

        public init(articleAssignment: ArticleAssignment?, groupId: String?, meta: [String: Any]?, quantity: Int?, query: ArticleQuery?) {
            self.groupId = groupId

            self.query = query

            self.quantity = quantity

            self.articleAssignment = articleAssignment

            self.meta = meta
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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: AssignStore
         Used By: Catalog
     */

    class AssignStore: Codable {
        public var articles: [AssignStoreArticle]

        public var pincode: String

        public var storeIds: [Int]?

        public var companyId: Int?

        public var channelIdentifier: String?

        public var channelType: String?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case articles

            case pincode

            case storeIds = "store_ids"

            case companyId = "company_id"

            case channelIdentifier = "channel_identifier"

            case channelType = "channel_type"

            case appId = "app_id"
        }

        public init(appId: String, articles: [AssignStoreArticle], channelIdentifier: String?, channelType: String?, companyId: Int?, pincode: String, storeIds: [Int]?) {
            self.articles = articles

            self.pincode = pincode

            self.storeIds = storeIds

            self.companyId = companyId

            self.channelIdentifier = channelIdentifier

            self.channelType = channelType

            self.appId = appId
        }

        public func duplicate() -> AssignStore {
            let dict = self.dictionary!
            let copy = AssignStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([AssignStoreArticle].self, forKey: .articles)

            pincode = try container.decode(String.self, forKey: .pincode)

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
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

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

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(appId, forKey: .appId)
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
        public var size: String

        public var groupId: String?

        public var priceMarked: Int?

        public var status: Bool

        public var uid: String?

        public var storeId: Int?

        public var strategyWiseListing: [[String: Any]]?

        public var quantity: Int

        public var index: Int?

        public var storePincode: Int?

        public var articleAssignment: ArticleAssignment1

        public var id: String?

        public var meta: [String: Any]?

        public var companyId: Int?

        public var priceEffective: Int?

        public var itemId: Int

        public var sCity: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case groupId = "group_id"

            case priceMarked = "price_marked"

            case status

            case uid

            case storeId = "store_id"

            case strategyWiseListing = "strategy_wise_listing"

            case quantity

            case index

            case storePincode = "store_pincode"

            case articleAssignment = "article_assignment"

            case id = "_id"

            case meta

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case sCity = "s_city"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int?, groupId: String?, index: Int?, itemId: Int, meta: [String: Any]?, priceEffective: Int?, priceMarked: Int?, quantity: Int, size: String, status: Bool, storeId: Int?, storePincode: Int?, strategyWiseListing: [[String: Any]]?, sCity: String?, uid: String?, id: String?) {
            self.size = size

            self.groupId = groupId

            self.priceMarked = priceMarked

            self.status = status

            self.uid = uid

            self.storeId = storeId

            self.strategyWiseListing = strategyWiseListing

            self.quantity = quantity

            self.index = index

            self.storePincode = storePincode

            self.articleAssignment = articleAssignment

            self.id = id

            self.meta = meta

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.sCity = sCity
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
                groupId = try container.decode(String.self, forKey: .groupId)

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

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                index = try container.decode(Int.self, forKey: .index)

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

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            do {
                id = try container.decode(String.self, forKey: .id)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sCity, forKey: .sCity)
        }
    }

    /*
         Model: GetAddressSerializer
         Used By: Catalog
     */

    class GetAddressSerializer: Codable {
        public var pincode: Int?

        public var state: String?

        public var longitude: Double?

        public var landmark: String?

        public var countryCode: String?

        public var city: String?

        public var addressType: String?

        public var country: String?

        public var latitude: Double?

        public var address2: String?

        public var address1: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case state

            case longitude

            case landmark

            case countryCode = "country_code"

            case city

            case addressType = "address_type"

            case country

            case latitude

            case address2

            case address1
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            self.pincode = pincode

            self.state = state

            self.longitude = longitude

            self.landmark = landmark

            self.countryCode = countryCode

            self.city = city

            self.addressType = addressType

            self.country = country

            self.latitude = latitude

            self.address2 = address2

            self.address1 = address1
        }

        public func duplicate() -> GetAddressSerializer {
            let dict = self.dictionary!
            let copy = GetAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

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
                longitude = try container.decode(Double.self, forKey: .longitude)

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
                city = try container.decode(String.self, forKey: .city)

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
                country = try container.decode(String.self, forKey: .country)

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
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }

    /*
         Model: UserSerializer1
         Used By: Catalog
     */

    class UserSerializer1: Codable {
        public var contact: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case contact

            case userId = "user_id"

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.contact = contact

            self.userId = userId

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

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }

    /*
         Model: GetCompanySerializer
         Used By: Catalog
     */

    class GetCompanySerializer: Codable {
        public var stage: String?

        public var addresses: [GetAddressSerializer]?

        public var companyType: String?

        public var name: String?

        public var businessType: String?

        public var uid: Int?

        public var modifiedOn: String?

        public var verifiedOn: String?

        public var createdBy: UserSerializer1?

        public var verifiedBy: UserSerializer1?

        public var modifiedBy: UserSerializer1?

        public var createdOn: String?

        public var rejectReason: String?

        public enum CodingKeys: String, CodingKey {
            case stage

            case addresses

            case companyType = "company_type"

            case name

            case businessType = "business_type"

            case uid

            case modifiedOn = "modified_on"

            case verifiedOn = "verified_on"

            case createdBy = "created_by"

            case verifiedBy = "verified_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case rejectReason = "reject_reason"
        }

        public init(addresses: [GetAddressSerializer]?, businessType: String?, companyType: String?, createdBy: UserSerializer1?, createdOn: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?) {
            self.stage = stage

            self.addresses = addresses

            self.companyType = companyType

            self.name = name

            self.businessType = businessType

            self.uid = uid

            self.modifiedOn = modifiedOn

            self.verifiedOn = verifiedOn

            self.createdBy = createdBy

            self.verifiedBy = verifiedBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

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
                companyType = try container.decode(String.self, forKey: .companyType)

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
                businessType = try container.decode(String.self, forKey: .businessType)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)

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
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        }
    }

    /*
         Model: UserSerializer2
         Used By: Catalog
     */

    class UserSerializer2: Codable {
        public var contact: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case contact

            case userId = "user_id"

            case username
        }

        public init(contact: String?, username: String?, userId: String?) {
            self.contact = contact

            self.userId = userId

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

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
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

        public var mobileNo: SellerPhoneNumber

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case mobileNo = "mobile_no"

            case name
        }

        public init(email: String?, mobileNo: SellerPhoneNumber, name: String?) {
            self.email = email

            self.mobileNo = mobileNo

            self.name = name
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

            mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: InvoiceCredSerializer
         Used By: Catalog
     */

    class InvoiceCredSerializer: Codable {
        public var enabled: Bool?

        public var username: String?

        public var password: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case username

            case password
        }

        public init(enabled: Bool?, password: String?, username: String?) {
            self.enabled = enabled

            self.username = username

            self.password = password
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
                username = try container.decode(String.self, forKey: .username)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)
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
        public var closing: LocationTimingSerializer?

        public var open: Bool

        public var weekday: String

        public var opening: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case closing

            case open

            case weekday

            case opening
        }

        public init(closing: LocationTimingSerializer?, open: Bool, opening: LocationTimingSerializer?, weekday: String) {
            self.closing = closing

            self.open = open

            self.weekday = weekday

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

            open = try container.decode(Bool.self, forKey: .open)

            weekday = try container.decode(String.self, forKey: .weekday)

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

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }

    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var verified: Bool?

        public var url: String?

        public var legalName: String?

        public var value: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case verified

            case url

            case legalName = "legal_name"

            case value

            case type
        }

        public init(legalName: String?, type: String, url: String?, value: String, verified: Bool?) {
            self.verified = verified

            self.url = url

            self.legalName = legalName

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
                verified = try container.decode(Bool.self, forKey: .verified)

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
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
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
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var company: GetCompanySerializer?

        public var verifiedBy: UserSerializer2?

        public var code: String

        public var displayName: String

        public var stage: String?

        public var name: String

        public var modifiedOn: String?

        public var verifiedOn: String?

        public var warnings: [String: Any]?

        public var modifiedBy: UserSerializer2?

        public var createdOn: String?

        public var phoneNumber: String

        public var manager: LocationManagerSerializer?

        public var customJson: [String: Any]?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var storeType: String?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var timing: [LocationDayWiseSerializer]?

        public var notificationEmails: [String]?

        public var address: GetAddressSerializer

        public var documents: [Document]?

        public var uid: Int?

        public var contactNumbers: [SellerPhoneNumber]?

        public var createdBy: UserSerializer2?

        public var integrationType: LocationIntegrationType?

        public enum CodingKeys: String, CodingKey {
            case company

            case verifiedBy = "verified_by"

            case code

            case displayName = "display_name"

            case stage

            case name

            case modifiedOn = "modified_on"

            case verifiedOn = "verified_on"

            case warnings

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case phoneNumber = "phone_number"

            case manager

            case customJson = "_custom_json"

            case gstCredentials = "gst_credentials"

            case storeType = "store_type"

            case productReturnConfig = "product_return_config"

            case timing

            case notificationEmails = "notification_emails"

            case address

            case documents

            case uid

            case contactNumbers = "contact_numbers"

            case createdBy = "created_by"

            case integrationType = "integration_type"
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer?, contactNumbers: [SellerPhoneNumber]?, createdBy: UserSerializer2?, createdOn: String?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, integrationType: LocationIntegrationType?, manager: LocationManagerSerializer?, modifiedBy: UserSerializer2?, modifiedOn: String?, name: String, notificationEmails: [String]?, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, verifiedBy: UserSerializer2?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            self.company = company

            self.verifiedBy = verifiedBy

            self.code = code

            self.displayName = displayName

            self.stage = stage

            self.name = name

            self.modifiedOn = modifiedOn

            self.verifiedOn = verifiedOn

            self.warnings = warnings

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.phoneNumber = phoneNumber

            self.manager = manager

            self.customJson = customJson

            self.gstCredentials = gstCredentials

            self.storeType = storeType

            self.productReturnConfig = productReturnConfig

            self.timing = timing

            self.notificationEmails = notificationEmails

            self.address = address

            self.documents = documents

            self.uid = uid

            self.contactNumbers = contactNumbers

            self.createdBy = createdBy

            self.integrationType = integrationType
        }

        public func duplicate() -> GetLocationSerializer {
            let dict = self.dictionary!
            let copy = GetLocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

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

            code = try container.decode(String.self, forKey: .code)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                documents = try container.decode([Document].self, forKey: .documents)

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
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

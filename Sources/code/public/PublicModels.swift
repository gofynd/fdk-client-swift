import Foundation
public extension PublicClient {
    /*
         Model: LocationDefaultLanguage
         Used By: Configuration
     */
    class LocationDefaultLanguage: Codable {
        public var name: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case code
        }

        public init(code: String?, name: String?) {
            self.name = name

            self.code = code
        }

        public func duplicate() -> LocationDefaultLanguage {
            let dict = self.dictionary!
            let copy = LocationDefaultLanguage(dictionary: dict)!
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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LocationDefaultCurrency
         Used By: Configuration
     */
    class LocationDefaultCurrency: Codable {
        public var name: String?

        public var symbol: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case symbol

            case code
        }

        public init(code: String?, name: String?, symbol: String?) {
            self.name = name

            self.symbol = symbol

            self.code = code
        }

        public func duplicate() -> LocationDefaultCurrency {
            let dict = self.dictionary!
            let copy = LocationDefaultCurrency(dictionary: dict)!
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
                symbol = try container.decode(String.self, forKey: .symbol)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(symbol, forKey: .symbol)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LocationCountry
         Used By: Configuration
     */
    class LocationCountry: Codable {
        public var capital: String?

        public var currency: String?

        public var iso2: String?

        public var iso3: String?

        public var name: String?

        public var parent: String?

        public var phoneCode: String?

        public var type: String?

        public var uid: Int?

        public var v: Int?

        public var id: String?

        public var defaultCurrency: LocationDefaultCurrency?

        public var defaultLanguage: LocationDefaultLanguage?

        public enum CodingKeys: String, CodingKey {
            case capital

            case currency

            case iso2

            case iso3

            case name

            case parent

            case phoneCode = "phone_code"

            case type

            case uid

            case v = "__v"

            case id = "_id"

            case defaultCurrency = "default_currency"

            case defaultLanguage = "default_language"
        }

        public init(capital: String?, currency: String?, defaultCurrency: LocationDefaultCurrency?, defaultLanguage: LocationDefaultLanguage?, iso2: String?, iso3: String?, name: String?, parent: String?, phoneCode: String?, type: String?, uid: Int?, id: String?, v: Int?) {
            self.capital = capital

            self.currency = currency

            self.iso2 = iso2

            self.iso3 = iso3

            self.name = name

            self.parent = parent

            self.phoneCode = phoneCode

            self.type = type

            self.uid = uid

            self.v = v

            self.id = id

            self.defaultCurrency = defaultCurrency

            self.defaultLanguage = defaultLanguage
        }

        public func duplicate() -> LocationCountry {
            let dict = self.dictionary!
            let copy = LocationCountry(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                capital = try container.decode(String.self, forKey: .capital)

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
                iso2 = try container.decode(String.self, forKey: .iso2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iso3 = try container.decode(String.self, forKey: .iso3)

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
                parent = try container.decode(String.self, forKey: .parent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneCode = try container.decode(String.self, forKey: .phoneCode)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

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
                defaultCurrency = try container.decode(LocationDefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultLanguage = try container.decode(LocationDefaultLanguage.self, forKey: .defaultLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(capital, forKey: .capital)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(iso2, forKey: .iso2)

            try? container.encodeIfPresent(iso3, forKey: .iso3)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parent, forKey: .parent)

            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(defaultLanguage, forKey: .defaultLanguage)
        }
    }

    /*
         Model: Locations
         Used By: Configuration
     */
    class Locations: Codable {
        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [[String: Any]]?) {
            self.items = items
        }

        public func duplicate() -> Locations {
            let dict = self.dictionary!
            let copy = Locations(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: EventConfig
         Used By: Webhook
     */
    class EventConfig: Codable {
        public var id: Int?

        public var eventName: String?

        public var eventType: String?

        public var eventCategory: String?

        public var version: String?

        public var displayName: String?

        public var description: String?

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case eventName = "event_name"

            case eventType = "event_type"

            case eventCategory = "event_category"

            case version

            case displayName = "display_name"

            case description

            case createdOn = "created_on"
        }

        public init(createdOn: String?, description: String?, displayName: String?, eventCategory: String?, eventName: String?, eventType: String?, id: Int?, version: String?) {
            self.id = id

            self.eventName = eventName

            self.eventType = eventType

            self.eventCategory = eventCategory

            self.version = version

            self.displayName = displayName

            self.description = description

            self.createdOn = createdOn
        }

        public func duplicate() -> EventConfig {
            let dict = self.dictionary!
            let copy = EventConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventCategory = try container.decode(String.self, forKey: .eventCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

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
                description = try container.decode(String.self, forKey: .description)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }

    /*
         Model: EventConfigList
         Used By: Webhook
     */
    class EventConfigList: Codable {
        public var items: [EventConfig]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [EventConfig]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> EventConfigList {
            let dict = self.dictionary!
            let copy = EventConfigList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([EventConfig].self, forKey: .items)

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
         Model: EventConfigResponse
         Used By: Webhook
     */
    class EventConfigResponse: Codable {
        public var eventConfigs: [EventConfig]?

        public enum CodingKeys: String, CodingKey {
            case eventConfigs = "event_configs"
        }

        public init(eventConfigs: [EventConfig]?) {
            self.eventConfigs = eventConfigs
        }

        public func duplicate() -> EventConfigResponse {
            let dict = self.dictionary!
            let copy = EventConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
        }
    }

    /*
         Model: SubscriberConfigList
         Used By: Webhook
     */
    class SubscriberConfigList: Codable {
        public var items: [SubscriberResponse]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [SubscriberResponse]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> SubscriberConfigList {
            let dict = self.dictionary!
            let copy = SubscriberConfigList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([SubscriberResponse].self, forKey: .items)

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
         Model: Page
         Used By: Webhook
     */
    class Page: Codable {
        public var itemTotal: Int?

        public var nextId: String?

        public var hasPrevious: Bool?

        public var hasNext: Bool?

        public var current: Int?

        public var type: String

        public var size: Int?

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case nextId = "next_id"

            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case current

            case type

            case size
        }

        public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, size: Int?, type: String) {
            self.itemTotal = itemTotal

            self.nextId = nextId

            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.current = current

            self.type = type

            self.size = size
        }

        public func duplicate() -> Page {
            let dict = self.dictionary!
            let copy = Page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

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
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }

    /*
         Model: EventProcessedStatus
         Used By: Webhook
     */
    class EventProcessedStatus: Codable {
        public var id: Int?

        public var subscriberId: String?

        public var attempt: Int?

        public var responseCode: String?

        public var responseMessage: String?

        public var createdOn: String?

        public var processedOn: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case subscriberId = "subscriber_id"

            case attempt

            case responseCode = "response_code"

            case responseMessage = "response_message"

            case createdOn = "created_on"

            case processedOn = "processed_on"

            case status
        }

        public init(attempt: Int?, createdOn: String?, id: Int?, processedOn: String?, responseCode: String?, responseMessage: String?, status: Bool?, subscriberId: String?) {
            self.id = id

            self.subscriberId = subscriberId

            self.attempt = attempt

            self.responseCode = responseCode

            self.responseMessage = responseMessage

            self.createdOn = createdOn

            self.processedOn = processedOn

            self.status = status
        }

        public func duplicate() -> EventProcessedStatus {
            let dict = self.dictionary!
            let copy = EventProcessedStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriberId = try container.decode(String.self, forKey: .subscriberId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attempt = try container.decode(Int.self, forKey: .attempt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseCode = try container.decode(String.self, forKey: .responseCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseMessage = try container.decode(String.self, forKey: .responseMessage)

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
                processedOn = try container.decode(String.self, forKey: .processedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(attempt, forKey: .attempt)

            try? container.encodeIfPresent(responseCode, forKey: .responseCode)

            try? container.encodeIfPresent(responseMessage, forKey: .responseMessage)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(processedOn, forKey: .processedOn)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: EventPayload
         Used By: Webhook
     */
    class EventPayload: Codable {
        public var id: Int?

        public var eventTraceId: String?

        public var messageId: String?

        public var eventName: String?

        public var eventType: String?

        public var version: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case eventTraceId = "event_trace_id"

            case messageId = "message_id"

            case eventName = "event_name"

            case eventType = "event_type"

            case version

            case status
        }

        public init(eventName: String?, eventTraceId: String?, eventType: String?, id: Int?, messageId: String?, status: Bool?, version: String?) {
            self.id = id

            self.eventTraceId = eventTraceId

            self.messageId = messageId

            self.eventName = eventName

            self.eventType = eventType

            self.version = version

            self.status = status
        }

        public func duplicate() -> EventPayload {
            let dict = self.dictionary!
            let copy = EventPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventTraceId = try container.decode(String.self, forKey: .eventTraceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                messageId = try container.decode(String.self, forKey: .messageId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(eventTraceId, forKey: .eventTraceId)

            try? container.encodeIfPresent(messageId, forKey: .messageId)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: SubscriberConfig
         Used By: Webhook
     */
    class SubscriberConfig: Codable {
        public var id: Int?

        public var name: String?

        public var webhookUrl: String?

        public var association: Association?

        public var customHeaders: [String: Any]?

        public var status: SubscriberStatus?

        public var emailId: String?

        public var authMeta: AuthMeta?

        public var eventId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case webhookUrl = "webhook_url"

            case association

            case customHeaders = "custom_headers"

            case status

            case emailId = "email_id"

            case authMeta = "auth_meta"

            case eventId = "event_id"
        }

        public init(association: Association?, authMeta: AuthMeta?, customHeaders: [String: Any]?, emailId: String?, eventId: [Int]?, id: Int?, name: String?, status: SubscriberStatus?, webhookUrl: String?) {
            self.id = id

            self.name = name

            self.webhookUrl = webhookUrl

            self.association = association

            self.customHeaders = customHeaders

            self.status = status

            self.emailId = emailId

            self.authMeta = authMeta

            self.eventId = eventId
        }

        public func duplicate() -> SubscriberConfig {
            let dict = self.dictionary!
            let copy = SubscriberConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                association = try container.decode(Association.self, forKey: .association)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(SubscriberStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailId = try container.decode(String.self, forKey: .emailId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventId = try container.decode([Int].self, forKey: .eventId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(association, forKey: .association)

            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(eventId, forKey: .eventId)
        }
    }

    /*
         Model: SubscriberResponse
         Used By: Webhook
     */
    class SubscriberResponse: Codable {
        public var id: Int?

        public var name: String?

        public var webhookUrl: String?

        public var association: Association?

        public var customHeaders: [String: Any]?

        public var emailId: String?

        public var status: SubscriberStatus?

        public var authMeta: AuthMeta?

        public var createdOn: String?

        public var updatedOn: String?

        public var eventConfigs: [EventConfig]?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case webhookUrl = "webhook_url"

            case association

            case customHeaders = "custom_headers"

            case emailId = "email_id"

            case status

            case authMeta = "auth_meta"

            case createdOn = "created_on"

            case updatedOn = "updated_on"

            case eventConfigs = "event_configs"
        }

        public init(association: Association?, authMeta: AuthMeta?, createdOn: String?, customHeaders: [String: Any]?, emailId: String?, eventConfigs: [EventConfig]?, id: Int?, name: String?, status: SubscriberStatus?, updatedOn: String?, webhookUrl: String?) {
            self.id = id

            self.name = name

            self.webhookUrl = webhookUrl

            self.association = association

            self.customHeaders = customHeaders

            self.emailId = emailId

            self.status = status

            self.authMeta = authMeta

            self.createdOn = createdOn

            self.updatedOn = updatedOn

            self.eventConfigs = eventConfigs
        }

        public func duplicate() -> SubscriberResponse {
            let dict = self.dictionary!
            let copy = SubscriberResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                association = try container.decode(Association.self, forKey: .association)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailId = try container.decode(String.self, forKey: .emailId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(SubscriberStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)

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
                updatedOn = try container.decode(String.self, forKey: .updatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(association, forKey: .association)

            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)

            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
        }
    }

    /*
         Model: SubscriberEvent
         Used By: Webhook
     */
    class SubscriberEvent: Codable {
        public var id: Int?

        public var subscriberId: Int?

        public var eventId: Int?

        public var createdDate: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case subscriberId = "subscriber_id"

            case eventId = "event_id"

            case createdDate = "created_date"
        }

        public init(createdDate: String?, eventId: Int?, id: Int?, subscriberId: Int?) {
            self.id = id

            self.subscriberId = subscriberId

            self.eventId = eventId

            self.createdDate = createdDate
        }

        public func duplicate() -> SubscriberEvent {
            let dict = self.dictionary!
            let copy = SubscriberEvent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriberId = try container.decode(Int.self, forKey: .subscriberId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventId = try container.decode(Int.self, forKey: .eventId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdDate = try container.decode(String.self, forKey: .createdDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(eventId, forKey: .eventId)

            try? container.encodeIfPresent(createdDate, forKey: .createdDate)
        }
    }

    /*
         Model: AuthMeta
         Used By: Webhook
     */
    class AuthMeta: Codable {
        public var type: String?

        public var secret: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case secret
        }

        public init(secret: String?, type: String?) {
            self.type = type

            self.secret = secret
        }

        public func duplicate() -> AuthMeta {
            let dict = self.dictionary!
            let copy = AuthMeta(dictionary: dict)!
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
                secret = try container.decode(String.self, forKey: .secret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }

    /*
         Model: Association
         Used By: Webhook
     */
    class Association: Codable {
        public var companyId: Int?

        public var applicationId: [String]?

        public var extensionId: String?

        public var criteria: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case applicationId = "application_id"

            case extensionId = "extension_id"

            case criteria
        }

        public init(applicationId: [String]?, companyId: Int?, criteria: String?, extensionId: String?) {
            self.companyId = companyId

            self.applicationId = applicationId

            self.extensionId = extensionId

            self.criteria = criteria
        }

        public func duplicate() -> Association {
            let dict = self.dictionary!
            let copy = Association(dictionary: dict)!
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
                applicationId = try container.decode([String].self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extensionId = try container.decode(String.self, forKey: .extensionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(extensionId, forKey: .extensionId)

            try? container.encodeIfPresent(criteria, forKey: .criteria)
        }
    }

    /*
         Model: EventConfigBase
         Used By: Webhook
     */
    class EventConfigBase: Codable {
        public var eventName: String?

        public var eventType: String?

        public var eventCategory: String?

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case eventName = "event_name"

            case eventType = "event_type"

            case eventCategory = "event_category"

            case version
        }

        public init(eventCategory: String?, eventName: String?, eventType: String?, version: String?) {
            self.eventName = eventName

            self.eventType = eventType

            self.eventCategory = eventCategory

            self.version = version
        }

        public func duplicate() -> EventConfigBase {
            let dict = self.dictionary!
            let copy = EventConfigBase(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventCategory = try container.decode(String.self, forKey: .eventCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: IntegrationConfig
         Used By: Lead
     */

    class IntegrationConfig: Codable {
        public var id: String?

        public var integrationType: String

        public var baseUrl: String?

        public var createTicketApikey: String?

        public var updateTicketApikey: String?

        public var categorySyncApikey: String?

        public var categoryData: CategoryData?

        public var webhookApikey: String?

        public var configCompleted: Bool?

        public var allowTicketCreation: Bool

        public var showListing: Bool

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case integrationType = "integration_type"

            case baseUrl = "base_url"

            case createTicketApikey = "create_ticket_apikey"

            case updateTicketApikey = "update_ticket_apikey"

            case categorySyncApikey = "category_sync_apikey"

            case categoryData = "category_data"

            case webhookApikey = "webhook_apikey"

            case configCompleted = "config_completed"

            case allowTicketCreation = "allow_ticket_creation"

            case showListing = "show_listing"
        }

        public init(allowTicketCreation: Bool, baseUrl: String? = nil, categoryData: CategoryData? = nil, categorySyncApikey: String? = nil, configCompleted: Bool? = nil, createTicketApikey: String? = nil, integrationType: String, showListing: Bool, updateTicketApikey: String? = nil, webhookApikey: String? = nil, id: String? = nil) {
            self.id = id

            self.integrationType = integrationType

            self.baseUrl = baseUrl

            self.createTicketApikey = createTicketApikey

            self.updateTicketApikey = updateTicketApikey

            self.categorySyncApikey = categorySyncApikey

            self.categoryData = categoryData

            self.webhookApikey = webhookApikey

            self.configCompleted = configCompleted

            self.allowTicketCreation = allowTicketCreation

            self.showListing = showListing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            integrationType = try container.decode(String.self, forKey: .integrationType)

            do {
                baseUrl = try container.decode(String.self, forKey: .baseUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createTicketApikey = try container.decode(String.self, forKey: .createTicketApikey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updateTicketApikey = try container.decode(String.self, forKey: .updateTicketApikey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categorySyncApikey = try container.decode(String.self, forKey: .categorySyncApikey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryData = try container.decode(CategoryData.self, forKey: .categoryData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webhookApikey = try container.decode(String.self, forKey: .webhookApikey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configCompleted = try container.decode(Bool.self, forKey: .configCompleted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allowTicketCreation = try container.decode(Bool.self, forKey: .allowTicketCreation)

            showListing = try container.decode(Bool.self, forKey: .showListing)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(baseUrl, forKey: .baseUrl)

            try? container.encodeIfPresent(createTicketApikey, forKey: .createTicketApikey)

            try? container.encodeIfPresent(updateTicketApikey, forKey: .updateTicketApikey)

            try? container.encodeIfPresent(categorySyncApikey, forKey: .categorySyncApikey)

            try? container.encodeIfPresent(categoryData, forKey: .categoryData)

            try? container.encodeIfPresent(webhookApikey, forKey: .webhookApikey)

            try? container.encodeIfPresent(configCompleted, forKey: .configCompleted)

            try? container.encodeIfPresent(allowTicketCreation, forKey: .allowTicketCreation)

            try? container.encodeIfPresent(showListing, forKey: .showListing)
        }
    }
}

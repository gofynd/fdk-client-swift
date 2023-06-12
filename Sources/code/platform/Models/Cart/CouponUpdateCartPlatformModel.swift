

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var tags: [String]?

        public var ownership: Ownership

        public var identifiers: Identifier

        public var validity: Validity

        public var validation: Validation?

        public var typeSlug: String

        public var restrictions: Restrictions?

        public var schedule: CouponSchedule?

        public var code: String

        public var displayMeta: DisplayMeta

        public var dateMeta: CouponDateMeta?

        public var action: CouponAction?

        public var rule: [Rule]

        public var state: State?

        public var author: CouponAuthor?

        public var ruleDefinition: RuleDefinition

        public enum CodingKeys: String, CodingKey {
            case tags

            case ownership

            case identifiers

            case validity

            case validation

            case typeSlug = "type_slug"

            case restrictions

            case schedule = "_schedule"

            case code

            case displayMeta = "display_meta"

            case dateMeta = "date_meta"

            case action

            case rule

            case state

            case author

            case ruleDefinition = "rule_definition"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.tags = tags

            self.ownership = ownership

            self.identifiers = identifiers

            self.validity = validity

            self.validation = validation

            self.typeSlug = typeSlug

            self.restrictions = restrictions

            self.schedule = schedule

            self.code = code

            self.displayMeta = displayMeta

            self.dateMeta = dateMeta

            self.action = action

            self.rule = rule

            self.state = state

            self.author = author

            self.ruleDefinition = ruleDefinition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
        }
    }
}

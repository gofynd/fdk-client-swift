

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var schedule: CouponSchedule?

        public var author: CouponAuthor?

        public var validation: Validation?

        public var displayMeta: DisplayMeta

        public var ruleDefinition: RuleDefinition

        public var typeSlug: String

        public var tags: [String]?

        public var ownership: Ownership

        public var rule: [Rule]

        public var dateMeta: CouponDateMeta?

        public var code: String

        public var state: State?

        public var action: CouponAction?

        public var identifiers: Identifier

        public var restrictions: Restrictions?

        public var validity: Validity

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case author

            case validation

            case displayMeta = "display_meta"

            case ruleDefinition = "rule_definition"

            case typeSlug = "type_slug"

            case tags

            case ownership

            case rule

            case dateMeta = "date_meta"

            case code

            case state

            case action

            case identifiers

            case restrictions

            case validity
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.schedule = schedule

            self.author = author

            self.validation = validation

            self.displayMeta = displayMeta

            self.ruleDefinition = ruleDefinition

            self.typeSlug = typeSlug

            self.tags = tags

            self.ownership = ownership

            self.rule = rule

            self.dateMeta = dateMeta

            self.code = code

            self.state = state

            self.action = action

            self.identifiers = identifiers

            self.restrictions = restrictions

            self.validity = validity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

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

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                state = try container.decode(State.self, forKey: .state)

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

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }
}

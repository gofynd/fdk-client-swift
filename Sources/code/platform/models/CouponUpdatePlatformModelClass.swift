

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var ownership: Ownership

        public var restrictions: Restrictions?

        public var validation: Validation?

        public var ruleDefinition: RuleDefinition

        public var state: State?

        public var action: CouponAction?

        public var schedule: CouponSchedule?

        public var typeSlug: String

        public var dateMeta: CouponDateMeta?

        public var identifiers: Identifier

        public var rule: [Rule]

        public var validity: Validity

        public var code: String

        public var author: CouponAuthor?

        public var tags: [String]?

        public var displayMeta: DisplayMeta

        public enum CodingKeys: String, CodingKey {
            case ownership

            case restrictions

            case validation

            case ruleDefinition = "rule_definition"

            case state

            case action

            case schedule = "_schedule"

            case typeSlug = "type_slug"

            case dateMeta = "date_meta"

            case identifiers

            case rule

            case validity

            case code

            case author

            case tags

            case displayMeta = "display_meta"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.ownership = ownership

            self.restrictions = restrictions

            self.validation = validation

            self.ruleDefinition = ruleDefinition

            self.state = state

            self.action = action

            self.schedule = schedule

            self.typeSlug = typeSlug

            self.dateMeta = dateMeta

            self.identifiers = identifiers

            self.rule = rule

            self.validity = validity

            self.code = code

            self.author = author

            self.tags = tags

            self.displayMeta = displayMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

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

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            rule = try container.decode([Rule].self, forKey: .rule)

            validity = try container.decode(Validity.self, forKey: .validity)

            code = try container.decode(String.self, forKey: .code)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

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

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
        }
    }
}

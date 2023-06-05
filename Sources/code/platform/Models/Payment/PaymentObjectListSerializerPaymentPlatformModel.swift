

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var currentStatus: String

        public var id: String

        public var applicationId: String

        public var companyId: String

        public var allStatus: [String]

        public var userObject: [String: Any]

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var paymentMode: String

        public var modifiedOn: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case id

            case applicationId = "application_id"

            case companyId = "company_id"

            case allStatus = "all_status"

            case userObject = "user_object"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.id = id

            self.applicationId = applicationId

            self.companyId = companyId

            self.allStatus = allStatus

            self.userObject = userObject

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var currentStatus: String

        public var id: String

        public var applicationId: String

        public var companyId: String

        public var allStatus: [String]

        public var userObject: [String: Any]

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var paymentMode: String

        public var modifiedOn: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case id

            case applicationId = "application_id"

            case companyId = "company_id"

            case allStatus = "all_status"

            case userObject = "user_object"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.id = id

            self.applicationId = applicationId

            self.companyId = companyId

            self.allStatus = allStatus

            self.userObject = userObject

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var refundedBy: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var currency: String

        public var companyId: String

        public var applicationId: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public var id: String

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentGateway: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case currency

            case companyId = "company_id"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"

            case id

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentGateway = "payment_gateway"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.currency = currency

            self.companyId = companyId

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus

            self.id = id

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var refundedBy: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var currency: String

        public var companyId: String

        public var applicationId: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public var id: String

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentGateway: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case currency

            case companyId = "company_id"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"

            case id

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentGateway = "payment_gateway"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.currency = currency

            self.companyId = companyId

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus

            self.id = id

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}

import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var branchName: Bool?

        public var transferMode: String

        public var accountHolder: String

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var modifiedOn: String

        public var bankName: String

        public var address: String

        public var title: String

        public var displayName: String

        public var isActive: Bool

        public var accountNo: String

        public var createdOn: String

        public var email: String

        public var id: Int

        public var mobile: Bool?

        public var subtitle: String

        public var comment: Bool?

        public var ifscCode: String

        public enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"

            case transferMode = "transfer_mode"

            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case address

            case title

            case displayName = "display_name"

            case isActive = "is_active"

            case accountNo = "account_no"

            case createdOn = "created_on"

            case email

            case id

            case mobile

            case subtitle

            case comment

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.branchName = branchName

            self.transferMode = transferMode

            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.address = address

            self.title = title

            self.displayName = displayName

            self.isActive = isActive

            self.accountNo = accountNo

            self.createdOn = createdOn

            self.email = email

            self.id = id

            self.mobile = mobile

            self.subtitle = subtitle

            self.comment = comment

            self.ifscCode = ifscCode
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            displayName = try container.decode(String.self, forKey: .displayName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        }
    }
}

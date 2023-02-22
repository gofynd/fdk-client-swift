

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var discount: Double

        public var id: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var sku: String

        public var quantity: Int

        public var itemSize: String

        public var priceMarked: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var avlQty: Int

        public var priceEffective: Double

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case discount

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case identifier

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case sku

            case quantity

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.discount = discount

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.sku = sku

            self.quantity = quantity

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

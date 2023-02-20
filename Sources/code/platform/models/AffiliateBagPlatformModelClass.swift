

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var discount: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var companyId: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var quantity: Int

        public var id: String

        public var itemSize: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case sku

            case discount

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case quantity

            case id = "_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case identifier

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.id = id

            self.itemSize = itemSize

            self.storeId = storeId

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var priceEffective: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var discount: Double

        public var sku: String

        public var itemSize: String

        public var priceMarked: Double

        public var quantity: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var unitPrice: Double

        public var id: String

        public var avlQty: Int

        public var modifiedOn: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case identifier

            case discount

            case sku

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case id = "_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.discount = discount

            self.sku = sku

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.id = id

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

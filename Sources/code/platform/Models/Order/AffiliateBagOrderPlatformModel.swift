

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var priceEffective: Double

        public var quantity: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var id: String

        public var sku: String

        public var hsnCodeId: String

        public var discount: Double

        public var priceMarked: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var storeId: Int

        public var transferPrice: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case priceEffective = "price_effective"

            case quantity

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case sku

            case hsnCodeId = "hsn_code_id"

            case discount

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case identifier

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.avlQty = avlQty

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var priceEffective: Double

        public var quantity: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var id: String

        public var sku: String

        public var hsnCodeId: String

        public var discount: Double

        public var priceMarked: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var storeId: Int

        public var transferPrice: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case priceEffective = "price_effective"

            case quantity

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case sku

            case hsnCodeId = "hsn_code_id"

            case discount

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case identifier

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.avlQty = avlQty

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

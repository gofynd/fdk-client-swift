

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var priceEffective: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var storeId: Int

        public var unitPrice: Double

        public var itemId: Int

        public var discount: Double

        public var itemSize: String

        public var sku: String

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var id: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case discount

            case itemSize = "item_size"

            case sku

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.discount = discount

            self.itemSize = itemSize

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.id = id

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var priceEffective: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var storeId: Int

        public var unitPrice: Double

        public var itemId: Int

        public var discount: Double

        public var itemSize: String

        public var sku: String

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var id: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case discount

            case itemSize = "item_size"

            case sku

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.discount = discount

            self.itemSize = itemSize

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.id = id

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

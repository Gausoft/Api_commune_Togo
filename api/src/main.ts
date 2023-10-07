import { AppModule } from '@/app/app.module';
import { INestApplication, Logger } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  setupOpenApi(app);

  const port = process.env.PORT || 3000;

  await app.listen(port);

  Logger.log(`🚀 API is running on: http://localhost:${port}/doc`);
}

bootstrap();

function setupOpenApi(app: INestApplication) {
  const config = new DocumentBuilder()
    .setTitle('🚀 Subdivisions administrative du Togo 🇹🇬')
    .setDescription(
      'Informations géographiques et démographiques détaillées sur les régions, villes, communes, préfectures, etc.',
    )
    .setVersion('0.1')
    .addBearerAuth()
    .build();
  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('doc', app, document);
}
